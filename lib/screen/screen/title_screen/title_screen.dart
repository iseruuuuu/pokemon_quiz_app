import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/screen/screen/title_screen/title_screen_controller.dart';
import 'package:get/get.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TitleScreenController(), tag: '');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            // Text(
            //   'POKEMON WORDLE',
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     fontSize: MediaQuery.of(context).size.width / 11,
            //     color: Colors.green,
            //   ),
            // ),
            Text(
              '　POKEMON　　　',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width / 9,
                color: Colors.green,
              ),
            ),
            Text(
              '　　　WORDLE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width / 9,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 1.8,
              child: Image.asset('assets/ball.png'),
            ),
            const Spacer(),

            IconButton(
              onPressed: controller.onTapStart,
              iconSize: 100,
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.blueAccent,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
