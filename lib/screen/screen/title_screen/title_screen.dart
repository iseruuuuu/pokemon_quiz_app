import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/screen/screen/title_screen/title_screen_controller.dart';
import 'package:get/get.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TitleScreenController(), tag: '');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'POKEMON WORDLE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width / 11,
                color: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: controller.onTapStart,
              child: Text(
                'Game Start',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 11,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
