import 'package:flutter/material.dart';
import 'package:mvc_darrt/controller/post_controller.dart';
import 'package:mvc_darrt/model/post_model.dart';
import 'package:mvc_darrt/view/post_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostController(postModel: PostModel()),
      child: MaterialApp(
        home: PostView(),
      ),
    );
  }
}
