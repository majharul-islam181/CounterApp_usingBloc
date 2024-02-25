import 'package:bloc_bangla/counter-bloc/counter_bloc.dart';
import 'package:bloc_bangla/counter-cubit/counter_cubit.dart';
import 'package:bloc_bangla/counter_bloc_home.dart';
import 'package:bloc_bangla/counter_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterBloc()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const CounterHomepage(),
          // home: CounterBlocHome(),
        ));
  }
}
