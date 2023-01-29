import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(TestInitial()) {
    on<RightPressedEvent>((event, emit) {
      emit(RightPressedState());
    });

    on<LeftPressedEvent>((event, emit) {
      emit(LeftPressedState());
    });
  }
}
