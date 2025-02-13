import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gallery/helpers/theme_provider.dart';
import 'package:provider/provider.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Function(String query) search;
  const CustomAppbar({super.key, required this.search});

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
              onSubmitted: (value) {
                search(value);
              },
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
          child: Switch(
              value: Provider.of<ThemeProvider>(context).isDarkMode,
              onChanged: (v) {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toogleTheme(v);
              }),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
