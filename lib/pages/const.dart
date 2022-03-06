import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseStorage storage = FirebaseStorage.instance;

List<NavBarItem> listNavigationBarItems = [
  NavBarItem(
    title: "Home",
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
  ),
  NavBarItem(
    title: "Chats",
    icon: Icons.chat_outlined,
    selectedIcon: Icons.chat,
  ),
  NavBarItem(
    title: "Notifications",
    icon: Icons.notifications_outlined,
    selectedIcon: Icons.notifications,
  ),
  NavBarItem(
    title: "Settings",
    icon: Icons.settings_outlined,
    selectedIcon: Icons.settings,
  )
];

class NavBarItem {
  String title;
  IconData icon;
  IconData selectedIcon;
  NavBarItem({
    required this.title,
    required this.icon,
    required this.selectedIcon,
  });
}
