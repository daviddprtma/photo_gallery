import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text("Photo Gallery"),
          TextField()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
