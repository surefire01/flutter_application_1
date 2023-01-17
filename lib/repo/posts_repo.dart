import 'package:flutter_application_1/data/api_service.dart';
import 'package:flutter_application_1/model/post.dart';

class PostRepo {
  static Future<List<Post>> getPosts() async {
    final res = await ApiService.get();
    return PostList.fromJson(res).postList;
  }
}
