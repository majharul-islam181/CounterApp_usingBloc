// ignore_for_file: camel_case_types

import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class plusButton extends CounterEvent {
  @override

  List<Object?> get props => [];

}

class minusButton extends CounterEvent {
  @override

  List<Object?> get props => [];

}

