import 'package:flutter/material.dart';

import 'custom_divider.dart';
import 'custom_elevated_button.dart';
import 'custom_team_configuration.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              CustomTeamConfiguration(
                text: "Team A",
                onOnePointTap: () {},
                onTwoPointsTap: () {},
                onThreePointsTap: () {},
              ),
              const CustomDivider(),
              CustomTeamConfiguration(
                text: "Team B",
                onOnePointTap: () {},
                onTwoPointsTap: () {},
                onThreePointsTap: () {},
              )
            ],
          ),
        ),
        SizedBox(
          height: 90,
        ),
        CustomElevatedButton(
          text: 'Reset',
          onTap: () {},
        )
      ],
    );
  }
}
