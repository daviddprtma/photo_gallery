import 'package:flutter/material.dart';
import 'package:photo_gallery/helpers/theme_provider.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Photo Gallery',
            themeMode: themeProvider.themeMode,
            theme: MyTheme.lightTheme,
            darkTheme: MyTheme.darkTheme,
            home: const PhotoGallery(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
