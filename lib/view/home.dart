import 'package:flutter/material.dart';
import 'package:flutter_application_1/repo/posts_repo.dart';

import '../utils/post_tile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(children: [
        FutureBuilder(
            future: PostRepo.getPosts(),
            builder: ((context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }

              final postList = snapshot.data;

              return Expanded(
                child: ListView.builder(
                    itemCount: postList!.length,
                    itemBuilder: ((context, index) {
                      //return Container();
                      return PostTile(
                        post: postList[index],
                      );
                    })),
              );
            }))
      ]),
    );
  }
}
