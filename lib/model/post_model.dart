import 'package:dio/dio.dart';

class PostModel {
  Dio dio = Dio();
  List<PostEntity> posts = [];
  Future<void> getPosts() async {
    final response = await dio.get(
      'https://jsonplaceholder.typicode.com/posts',
    );
    List data = response.data;
    print(response.data);
    posts = data.map((v) => PostEntity.fromApi(v)).toList();
  }
}

class PostEntity {
  final id;
  final title;
  final body;
  PostEntity({required this.id, required this.title, required this.body});

  factory PostEntity.fromApi(Map map) {
    return PostEntity(id: map['id'], title: map['title'], body: map['body']);
  }
}
