import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialnetwork/controllers/app_controller.dart';
import 'package:socialnetwork/pages/chats/chat.dart';
import 'package:socialnetwork/pages/const.dart';
import 'package:socialnetwork/pages/feed/feed.dart';
import 'package:socialnetwork/pages/notification/notification.dart';
import 'package:socialnetwork/pages/settings/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              listNavigationBarItems[controller.getCurrentNavbarIndex()].title,
            ),
          ),
          body: IndexedStack(
            index: controller.getCurrentNavbarIndex(),
            children: const [
              FeedPage(),
              ChatPage(),
              NotificationPage(),
              SettingsPage(),
            ],
          ),
          bottomNavigationBar: NavigationBar(
            height: 60.0,
            selectedIndex: controller.getCurrentNavbarIndex(),
            onDestinationSelected: (value) => controller.setCurrentNavbarIndex(value),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: listNavigationBarItems.map((item) {
              return NavigationDestination(
                icon: Icon(item.icon),
                selectedIcon: Icon(item.selectedIcon),
                label: item.title,
                tooltip: item.title,
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
