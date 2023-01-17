class PostList {
  PostList({
    required this.postList,
  });
  late final List<Post> postList;

  PostList.fromJson(List jsonArray) {
    postList = jsonArray.map((e) => Post.fromJson(e)).toList();
  }
}

class Post {
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  late final int userId;
  late final int id;
  late final String title;
  late final String body;

  Post.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userId'] = userId;
    _data['id'] = id;
    _data['title'] = title;
    _data['body'] = body;
    return _data;
  }
}
