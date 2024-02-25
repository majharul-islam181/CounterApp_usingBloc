// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {
  const CounterState();
}

class CounterInit extends CounterState {
  @override
  List<Object?> get props => [];
}

class CounterUpdate extends CounterState {
  int value;
  CounterUpdate({
    required this.value,
  });
  @override
  List<Object?> get props => [value];
}
