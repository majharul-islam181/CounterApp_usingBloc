// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc_bangla/counter-bloc/counter_bloc.dart';
import 'package:bloc_bangla/counter-bloc/counter_event.dart';
import 'package:bloc_bangla/counter-bloc/counter_state.dart';
import 'package:bloc_bangla/counter-cubit/counter_cubit.dart';
import 'package:bloc_bangla/counter-cubit/counter_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterHomepage extends StatefulWidget {
  const CounterHomepage({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterHomepage> createState() => _CounterHomepageState();
}

class _CounterHomepageState extends State<CounterHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Bloc Counter App")),
        body: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (state is CounterUpdate)
                    ? Text(state.value.toString())
                    : const Text('0'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(plusButton());
                      },
                      child: const Icon(Icons.add),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(minusButton());
                      },
                      child: const Text('-'),
                    )
                  ],
                ),
              ],
            );
          },
        ));
  }
}
