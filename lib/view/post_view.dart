import 'package:flutter/material.dart';
import 'package:mvc_darrt/controller/post_controller.dart';
import 'package:mvc_darrt/model/post_model.dart';
import 'package:provider/provider.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<PostController>(context);
    return Scaffold(
      body: SafeArea(child: FutureBuilder(future: controller.getPosts(), builder: (context, snapshop) {
        if(snapshop.hasData) {
        return  ListView.builder(itemBuilder: (context, index) {
            PostEntity post = controller.posts[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Column(
                children: [
                  Text(post.title),
                  Text(post.body),
                ],
              ),
            );
          },itemCount: controller.posts.length,);
        }
        return  CircularProgressIndicator();
      })),
    );
  }
}
