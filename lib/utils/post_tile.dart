import 'package:flutter/material.dart';
import '../model/post.dart';

class PostTile extends StatelessWidget {
  const PostTile({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.title,
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900]),
              ),
              const SizedBox(height: 10),
              Text(
                post.body,
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "userId ${post.userId}",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "|",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w100),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "id ${post.id}",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
