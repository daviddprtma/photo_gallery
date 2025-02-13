import 'dart:convert';

import 'package:photo_gallery/models/image_model.dart';
import 'package:http/http.dart' as http;

class ImageServices {
  Future<List<ImageModel>> fetchImages(String query, int page) async {
    String url =
        'https://pixabay.com/api/?key=48813682-3bd6d94f16b4d0a63e4016ea5&q=${query}&image_type=photo&pretty=true&page=${page}&per_page=20';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // print(response.body);
      return (json.decode(response.body)['hits'] as List)
          .map((data) => ImageModel.fromJson(data))
          .toList();
    } else {
      throw Exception('Failed to load images');
    }
  }
}
