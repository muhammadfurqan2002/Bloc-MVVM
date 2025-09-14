import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
   on<IncrementCounterEvent>(_increment);
   on<DecrementCounterEvent>(_decrement);
  }
  void _increment(IncrementCounterEvent event,Emitter<CounterState> emit){
    emit.call(state.copyWith(counter: state.count+1));
  }
  void _decrement(DecrementCounterEvent event,Emitter<CounterState> emit){
    emit.call(state.copyWith(counter: state.count-1));
  }
}
