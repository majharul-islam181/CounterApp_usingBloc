// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:equatable/equatable.dart';

abstract class CounterCubitState extends Equatable {
  const CounterCubitState();
}

class CounterInitiate extends CounterCubitState {
  @override
  List<Object> get props => [];
}

class CounterValueAdded extends CounterCubitState {
  int counter;

  CounterValueAdded({
    required this.counter,

  });
  @override
  List<Object?> get props => [counter];
}