import 'package:flutter/material.dart';
import 'package:photo_gallery/helpers/theme_provider.dart';
import 'package:photo_gallery/models/image_model.dart';
import 'package:provider/provider.dart';

class ImageDialog extends StatefulWidget {
  final List<ImageModel> imgs;
  final int currentIdx;

  const ImageDialog({super.key, required this.imgs, required this.currentIdx});

  @override
  State<StatefulWidget> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  int idx = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      idx = widget.currentIdx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                color: Provider.of<ThemeProvider>(context).isDarkMode
                    ? Colors.grey[900]
                    : Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    widget.imgs[idx].url,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
