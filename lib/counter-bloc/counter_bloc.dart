// ignore_for_file: invalid_use_of_visible_for_testing_member, unused_element

import 'package:bloc/bloc.dart';
import 'package:bloc_bangla/counter-bloc/counter_event.dart';
import 'package:bloc_bangla/counter-bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;

  CounterBloc() : super(CounterInit()) {
    on<plusButton>((event, state) {
      counter++;
      emit(CounterUpdate(value: counter));
    });

    on<minusButton>((event, state) {
      counter--;
      emit(CounterUpdate(value: counter));
    });
  }
}
