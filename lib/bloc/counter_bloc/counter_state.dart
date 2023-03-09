part of 'counter_bloc.dart';



abstract class CounterState extends Equatable {
  const CounterState();
  @override
  List<Object?> get props => [];
}

class LoadedCounterState extends CounterState{
  final int counter;

  const LoadedCounterState({required this.counter});
  @override
  List<Object?> get props => [counter];
}
class FailureCounterState extends CounterState{
  final String failure;

  const FailureCounterState({required this.failure});
  @override
  List<Object?> get props => [failure];
}
