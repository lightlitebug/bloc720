import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<IncrementEvent>(_increment);
    on<DecrementEvent>(_decrement);
  }

  FutureOr<void> _increment(event, emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  FutureOr<void> _decrement(event, emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
