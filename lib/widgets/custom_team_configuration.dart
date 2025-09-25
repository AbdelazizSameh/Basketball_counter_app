import 'package:flutter/material.dart';

import 'custom_elevated_button.dart';
import 'custom_text.dart';

class CustomTeamConfiguration extends StatelessWidget {
  const CustomTeamConfiguration({
    super.key,
    required this.text,
    this.onOnePointTap,
    this.onTwoPointsTap,
    this.onThreePointsTap,
  });
  final String text;
  final void Function()? onOnePointTap;
  final void Function()? onTwoPointsTap;
  final void Function()? onThreePointsTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        CustomText(
          text: text,
          fontSize: 35,
        ),
        const SizedBox(
          width: 120,
          height: 180,
          child: FittedBox(child: CustomText(text: '90', fontSize: 90)),
        ),
        CustomElevatedButton(
          text: "Add 1 point",
          onTap: onOnePointTap,
        ),
        CustomElevatedButton(
          text: "Add 2 point",
          onTap: onTwoPointsTap,
        ),
        CustomElevatedButton(
          text: "Add 3 point",
          onTap: onThreePointsTap,
        ),
      ],
    );
  }
}
