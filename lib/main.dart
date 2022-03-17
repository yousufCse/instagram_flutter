import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instragram_flutter/core/utils/colors.dart';
import 'package:instragram_flutter/features/login/pages/login_page.dart';
import 'package:instragram_flutter/responsive/mobile_screen_layout.dart';
import 'package:instragram_flutter/responsive/responsive_layout.dart';
import 'package:instragram_flutter/responsive/web_screen_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCBtHMA6wqWhscivBL4v6QyPxJGdePBiFg',
        appId: '1:341036660038:web:8343aa0a4bd1d578426147',
        messagingSenderId: '341036660038',
        projectId: 'instragram-flutter-ddd46',
        storageBucket: 'instragram-flutter-ddd46.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instragram Flutter',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: LoginPage(),
    );
  }
}
