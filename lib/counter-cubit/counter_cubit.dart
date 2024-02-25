// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:bloc_bangla/counter-cubit/counter_cubit_state.dart';


class CounterCubit extends Cubit<CounterCubitState> {
  int counter = 0;
  CounterCubit() : super(CounterInitiate());

  void CounterIncrease() {
    counter++;
    emit(CounterValueAdded(counter: counter));
  }

  void CounterDecrese() {
    counter--;
    emit(CounterValueAdded(counter: counter));
  }
}
