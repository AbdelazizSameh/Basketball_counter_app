import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange,
      title: Text(
        "Points Counter",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
