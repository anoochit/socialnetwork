import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 200,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 24,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: MediaQuery.of(context).size.width - (48 * 2) - 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(48.0),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "What's on your mind?",
                      ),
                      keyboardType: TextInputType.none,
                      onTap: () {
                        // show post page
                        Get.toNamed('createPost');
                      },
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.collections,
                    size: 48 - 8 - 8,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          );
        }
        return const ListTile(
          title: Text("List"),
        );
      },
    );
  }
}
