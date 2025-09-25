import 'package:basketball_app/cubit/counter_cubit.dart';
import 'package:basketball_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const BasketBallCounterApp());

class BasketBallCounterApp extends StatelessWidget {
  const BasketBallCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false, home: const HomeView()),
    );
  }
}
