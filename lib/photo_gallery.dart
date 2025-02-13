import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_gallery/models/image_model.dart';
import 'package:photo_gallery/services/image_services.dart';
import 'package:photo_gallery/widgets/custom_appbar.dart';
import 'package:photo_gallery/widgets/footer.dart';
import 'package:photo_gallery/widgets/image_card.dart';
import 'package:photo_gallery/widgets/skeleton_loader.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({super.key});

  @override
  State<StatefulWidget> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  List<ImageModel> _imgs = [];
  String query = '';
  int pageIdx = 1;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    _imgs = await ImageServices().fetchImages('anime', pageIdx);
    setState(() {
      _imgs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          search: (query) async {
            _imgs = await ImageServices().fetchImages(query, 1);
            setState(() {
              _imgs;
            });
          },
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            controller: _scrollController
              ..addListener(() async {
                if (_scrollController.position.pixels ==
                    _scrollController.position.maxScrollExtent) {
                  List<ImageModel> newImages =
                      await ImageServices().fetchImages(query, pageIdx++);
                  setState(() {
                    _imgs.addAll(newImages);
                  });
                }
              }),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: _imgs.isEmpty ? 12 : _imgs.length,
                  itemBuilder: (context, idx) {
                    return _imgs.isEmpty
                        ? const SkeletonLoader()
                        : ImageCard(
                            imageData: _imgs[idx], idx: idx, pnTap: (int a) {});
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Footer()
              ],
            ),
          ),
        ));
  }
}
