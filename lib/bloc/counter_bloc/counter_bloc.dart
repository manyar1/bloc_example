
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState >{
  
  CounterBloc(): super(const LoadedCounterState(counter: 0)){
    _setupEvents();
    
  }
  void _setupEvents(){
    on<CounterEventDecrement>(_onDecrement, transformer: droppable());
    on<CounterEventIncrement>(_onIncrement, transformer: droppable());
}
void _onDecrement(CounterEventDecrement event, Emitter emit){
  final prevState = state; 
  if (prevState is! LoadedCounterState){
    log('illegle ${prevState.runtimeType} for ${event.runtimeType}');
    return;
  }
    final counter = prevState.counter - 1;
    log('${prevState.counter}');
    emit(LoadedCounterState(counter: counter));
}
void _onIncrement(CounterEventIncrement event, Emitter emit){
    final prevState = state; 
  if (prevState is! LoadedCounterState){
    log('illegle ${prevState.runtimeType} for ${event.runtimeType}');
    return;
  }
    final counter = prevState.counter + 1;
    log('$counter');
    emit(LoadedCounterState(counter: counter));
}
}

