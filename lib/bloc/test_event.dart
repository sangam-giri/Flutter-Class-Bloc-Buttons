part of 'test_bloc.dart';

@immutable
abstract class TestEvent {}

class TestInitialEvent extends TestEvent {}

class RightPressedEvent extends TestEvent {}

class LeftPressedEvent extends TestEvent {}
