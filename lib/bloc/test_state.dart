part of 'test_bloc.dart';

@immutable
abstract class TestState {}

class TestInitial extends TestState {}

class RightPressedState extends TestState {}

class LeftPressedState extends TestState {}
