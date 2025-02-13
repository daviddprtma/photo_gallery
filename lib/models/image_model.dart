class ImageModel {
  final String url;
  final String tags;
  final int views;
  final int likes;

  ImageModel(
      {required this.url,
      required this.tags,
      required this.views,
      required this.likes});

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      url: json['webformatURL'],
      tags: json['tags'],
      views: json['views'],
      likes: json['likes'],
    );
  }
}
