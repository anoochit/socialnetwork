import 'package:flutter/material.dart';

class CreatePostPage extends StatefulWidget {
  CreatePostPage({Key? key}) : super(key: key);

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create post"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(ThemeData().primaryColor)),
              child: Text(
                "Post".toUpperCase(),
              ),
              onPressed: () {
                // post content
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // user info
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // avatar
                const CircleAvatar(
                  radius: 24,
                ),
                const SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // name
                    const Text(
                      "Name",
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4.0),
                    // modifier
                    Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.lock,
                              size: 16,
                              color: Colors.grey,
                            ),
                            Text("Only me"),
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
          // input field
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "What's on your mind?",
                ),
                style: const TextStyle(fontSize: 18.0),
                maxLines: 100,
              ),
            ),
          ),
          // tools
          Divider(
            height: 0,
            thickness: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          NavigationBarTheme(
            data: NavigationBarThemeData(indicatorColor: Colors.transparent),
            child: NavigationBar(
              height: 60,
              selectedIndex: _currentIndex,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              destinations: const [
                NavigationDestination(icon: Icon(Icons.image), label: 'Image'),
                NavigationDestination(icon: Icon(Icons.movie), label: 'Video'),
                NavigationDestination(icon: Icon(Icons.format_quote), label: 'Quot'),
                NavigationDestination(icon: Icon(Icons.more_horiz), label: 'More'),
              ],
              onDestinationSelected: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
