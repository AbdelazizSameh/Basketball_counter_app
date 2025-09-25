import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      width: 0,
      color: Colors.black,
      indent: 20,
      endIndent: 3,
      thickness: 0.6,
    );
  }
}
