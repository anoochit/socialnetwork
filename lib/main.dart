import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialnetwork/controllers/app_controller.dart';
import 'package:socialnetwork/firebase_options.dart';
import 'package:socialnetwork/pages/post/create_post.dart';
import 'package:socialnetwork/pages/signin/signin.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final AppController appController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Social Network',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          )),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 2.0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(16.0),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
        navigationBarTheme: NavigationBarThemeData(
          indicatorColor: Theme.of(context).primaryColorDark.withOpacity(0.25),
          labelTextStyle: MaterialStateProperty.all(const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          )),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 2.0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(16.0),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ),
      home: SignInPage(),
      routes: {
        'createPost': (context) => CreatePostPage(),
      },
    );
  }
}
