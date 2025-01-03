import 'package:flutter/material.dart';
import 'package:photo_gallery/widgets/custom_appbar.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({super.key});

  @override
  State<StatefulWidget> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(),
      body: Center(
        child: Text("Photo Gallery"),
      ),
    );
  }
}
