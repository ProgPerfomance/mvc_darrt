

import 'package:flutter/material.dart';
import 'package:mvc_darrt/model/post_model.dart';

class PostController extends ChangeNotifier {

  final PostModel postModel;
  PostController({required this.postModel});

  List<PostEntity> get posts => postModel.posts;

  Future<void> getPosts () async {
    await postModel.getPosts();
  }

}