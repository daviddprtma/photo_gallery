import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Photo Gallery",
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple))),
          const SizedBox(width: 30),
          Flexible(
              child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.55,
            child: SearchBar(
              controller: TextEditingController(),
              onSubmitted: (value) {},
              trailing: [
                IconButton(icon: const Icon(Icons.search), onPressed: () {})
              ],
            ),
          ))
        ],
      ),
      centerTitle: true,
      actions: [
        Center(
          child: Switch(value: false, onChanged: (v) {}),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
