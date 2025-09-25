import 'package:basketball_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncreamentState());
  int teamAcounter = 0;

  int teamBcounter = 0;

  void increaseTeamA(int counter) {
    teamAcounter += counter;
    emit(CounterAIncreamentState());
  }

  void increaseTeamB(int counter) {
    teamBcounter += counter;
    emit(CounterBIncreamentState());
  }

  void resetCounter() {
    teamAcounter = 0;
    teamBcounter = 0;
    emit(CounterResetState());
  }
}
