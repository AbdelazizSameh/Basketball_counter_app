import 'package:basketball_app/cubit/counter_cubit.dart';
import 'package:basketball_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_divider.dart';
import 'custom_elevated_button.dart';
import 'custom_text.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 10,
            children: [
              Column(
                spacing: 20,
                children: [
                  CustomText(
                    text: "Team A",
                    fontSize: 35,
                  ),
                  SizedBox(
                    width: 120,
                    height: 180,
                    child: FittedBox(
                        child: BlocBuilder<CounterCubit, CounterState>(
                      builder: (context, state) {
                        return CustomText(
                            text: "${counterCubit.teamAcounter}", fontSize: 90);
                      },
                    )),
                  ),
                  CustomElevatedButton(
                    text: "Add 1 point",
                    onTap: () => counterCubit.increaseTeamA(1),
                  ),
                  CustomElevatedButton(
                    text: "Add 2 point",
                    onTap: () => counterCubit.increaseTeamA(2),
                  ),
                  CustomElevatedButton(
                    text: "Add 3 point",
                    onTap: () => counterCubit.increaseTeamA(3),
                  ),
                ],
              ),
              const CustomDivider(),
              Column(
                spacing: 20,
                children: [
                  CustomText(
                    text: "Team B",
                    fontSize: 35,
                  ),
                  SizedBox(
                      width: 120,
                      height: 180,
                      child: FittedBox(
                        child: BlocBuilder<CounterCubit, CounterState>(
                          builder: (context, state) {
                            return CustomText(
                                text: "${counterCubit.teamBcounter}",
                                fontSize: 90);
                          },
                        ),
                      )),
                  CustomElevatedButton(
                    text: "Add 1 point",
                    onTap: () => counterCubit.increaseTeamB(1),
                  ),
                  CustomElevatedButton(
                    text: "Add 2 point",
                    onTap: () => counterCubit.increaseTeamB(2),
                  ),
                  CustomElevatedButton(
                    text: "Add 3 point",
                    onTap: () => counterCubit.increaseTeamB(3),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 130,
        ),
        CustomElevatedButton(
            text: 'Reset', onTap: () => counterCubit.resetCounter())
      ],
    );
  }
}
