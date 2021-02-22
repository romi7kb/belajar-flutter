import 'dart:convert';
import 'get_post_model.dart';
import 'package:http/http.dart';

class GetPost {
  final String url = "https://jsonplaceholder.typicode.com/posts";
  Future<List<Post>> getPostData() async {
    Response res = await get(url);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post> postData =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return postData;
    } else {
      throw "tidak bisa mendapat data";
    }
  }
}
