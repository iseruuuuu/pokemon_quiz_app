import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_quiz_app/screen/screen/home_screen/home_screen.dart';
import 'package:pokemon_quiz_app/screen/screen/title_screen/title_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // home: HomeScreen(),
      home: const TitleScreen(),
    );
  }
}
