part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable{
 const CounterEvent();
  @override

  List<Object?> get props => [];
}

class CounterEventDecrement extends CounterEvent{
  const CounterEventDecrement();
}

class CounterEventIncrement extends CounterEvent{
  const CounterEventIncrement();
}