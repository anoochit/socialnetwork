import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:socialnetwork/pages/const.dart';
import 'package:socialnetwork/pages/home/home.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User is not signed in goto signin page
        if (!snapshot.hasData) {
          return SignInScreen(
            providerConfigs: const [
              EmailProviderConfiguration(),
            ],
            actions: [
              AuthStateChangeAction<SignedIn>((context, SignedIn signedIn) {
                log('state user uid ->  ${signedIn.user!.uid}');
              }),
            ],
          );
        }
        // User already signin goto home page
        log("user uid -> " + auth.currentUser!.uid);
        return const HomePage();
      },
    );
  }
}
