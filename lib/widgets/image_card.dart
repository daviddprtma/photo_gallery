import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gallery/models/image_model.dart';

class ImageCard extends StatefulWidget {
  final ImageModel imageData;
  final int idx;
  final Function(int) pnTap;

  const ImageCard(
      {super.key,
      required this.imageData,
      required this.idx,
      required this.pnTap});

  @override
  State<StatefulWidget> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) {
          setState(() {
            _isHover = true;
          });
        },
        onExit: (event) {
          setState(() {
            _isHover = false;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: _isHover
              ? (Matrix4.identity()
                ..scale(1.03, 1.03)
                ..translate(0, -1))
              : Matrix4.identity(),
          child: GestureDetector(
            onTap: () {
              widget.pnTap(widget.idx);
            },
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Expanded(
                      child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    child: Image.network(
                      widget.imageData.url,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.label,
                              size: 14,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                                child: Text(
                              widget.imageData.tags,
                              style: GoogleFonts.titilliumWeb(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.visibility,
                              size: 14,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                                child: Text(
                              widget.imageData.views.toString(),
                              style: GoogleFonts.titilliumWeb(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.thumb_up_sharp,
                              size: 14,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                                child: Text(
                              widget.imageData.likes.toString(),
                              style: GoogleFonts.titilliumWeb(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
