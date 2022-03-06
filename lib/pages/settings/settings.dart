import 'package:flutter/material.dart';
import 'package:socialnetwork/pages/const.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // image
        // name
        // list menu
        Expanded(
            child: ListView(
          children: [
            // edit profile
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Edit Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications_none),
              title: Text("Notifications"),
              onTap: () {},
            ),
            // sign out
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Sign Out"),
              onTap: () => auth.signOut(),
            ),
          ],
        ))
      ],
    );
  }
}
