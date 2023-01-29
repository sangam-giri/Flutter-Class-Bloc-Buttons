import 'package:bloc_test/bloc/test_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<TestBloc, TestState>(
              builder: (context, state) {
                if (state is RightPressedState) {
                  return const Text(
                    'Right Pressed',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                  );
                }
                if (state is LeftPressedState) {
                  return const Text(
                    'Left Pressed',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                  );
                }
                return const Text(
                  'UnPressed',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                );
              },
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<TestBloc>(context)
                          .add(RightPressedEvent());
                    },
                    child: const Text('Right')),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<TestBloc>(context)
                          .add(LeftPressedEvent());
                    },
                    child: const Text('Left')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
