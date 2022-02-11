import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/screen/item/container_item.dart';
import 'package:pokemon_quiz_app/screen/item/flick_keyboard/flick_keyboard_widget.dart';
import 'package:pokemon_quiz_app/screen/item/keyboard/keyboard_widget.dart';

import 'home_screen_controller.dart';
import 'item/flick_keyboard/flick_keyboard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    final controller = Get.put(HomeScreenController(), tag: '');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Color(0xDD000000),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => ContainerItem(
                    text: controller.answerOne.value,
                  ),
                ),
                Obx(
                  () => ContainerItem(
                    text: controller.answerTwo.value,
                  ),
                ),
                Obx(
                  () => ContainerItem(
                    text: controller.answerThree.value,
                  ),
                ),
                Obx(
                  () => ContainerItem(
                    text: controller.answerFour.value,
                  ),
                ),
                Obx(
                  () => ContainerItem(
                    text: controller.answerFive.value,
                  ),
                ),
              ],
            ),
            Spacer(),
            // KeyboardWidget(),

            Spacer(),
            Row(
              children: [
                Text(controller.one.value),
                Text(controller.two.value),
                Text(controller.three.value),
                Text(controller.four.value),
                Text(controller.five.value),
              ],
            ),
            Spacer(),

            // FlickKeyboardWidget(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlickKeyboard(
                      text: 'ア',
                      callback: () => controller.numClick('ア'),
                      swipeLeft: () => controller.numClick('イ'),
                      swipeUp: () => controller.numClick('ウ'),
                      swipeRight: () => controller.numClick('エ'),
                      swipeDown: () => controller.numClick('オ'),
                    ),
                    FlickKeyboard(
                      text: 'カ',
                      callback: () => controller.numClick('カ'),
                      swipeLeft: () => controller.numClick('キ'),
                      swipeUp: () => controller.numClick('ク'),
                      swipeRight: () => controller.numClick('ケ'),
                      swipeDown: () => controller.numClick('コ'),
                    ),
                    FlickKeyboard(
                      text: 'サ',
                      callback: () => controller.numClick('サ'),
                      swipeLeft: () => controller.numClick('シ'),
                      swipeUp: () => controller.numClick('ス'),
                      swipeRight: () => controller.numClick('セ'),
                      swipeDown: () => controller.numClick('ソ'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlickKeyboard(
                      text: 'タ',
                      callback: () => controller.numClick('タ'),
                      swipeLeft: () => controller.numClick('チ'),
                      swipeUp: () => controller.numClick('ツ'),
                      swipeRight: () => controller.numClick('テ'),
                      swipeDown: () => controller.numClick('ﾄ'),
                    ),
                    FlickKeyboard(
                      text: 'ナ',
                      callback: () => controller.numClick('ナ'),
                      swipeLeft: () => controller.numClick('ニ'),
                      swipeUp: () => controller.numClick('ヌ'),
                      swipeRight: () => controller.numClick('ネ'),
                      swipeDown: () => controller.numClick('ノ'),
                    ),
                    FlickKeyboard(
                      text: 'ハ',
                      callback: () => controller.numClick('ハ'),
                      swipeLeft: () => controller.numClick('ヒ'),
                      swipeUp: () => controller.numClick('フ'),
                      swipeRight: () => controller.numClick('へ'),
                      swipeDown: () => controller.numClick('ホ'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlickKeyboard(
                      text: 'マ',
                      callback: () => controller.numClick('マ'),
                      swipeLeft: () => controller.numClick('ミ'),
                      swipeUp: () => controller.numClick('ム'),
                      swipeRight: () => controller.numClick('メ'),
                      swipeDown: () => controller.numClick('モ'),
                    ),
                    FlickKeyboard(
                      text: 'ヤ',
                      callback: () => controller.numClick('ヤ'),
                      swipeUp: () => controller.numClick('ユ'),
                      swipeDown: () => controller.numClick('ヨ'),
                    ),
                    FlickKeyboard(
                      text: 'ラ',
                      callback: () => controller.numClick('ラ'),
                      swipeLeft: () => controller.numClick('リ'),
                      swipeUp: () => controller.numClick('ル'),
                      swipeRight: () => controller.numClick('レ'),
                      swipeDown: () => controller.numClick('ロ'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.width / 5,
                    ),
                    FlickKeyboard(
                      text: 'ワ',
                      callback: () => controller.numClick('ワ'),
                      swipeLeft: () => controller.numClick('ヲ'),
                      swipeUp: () => controller.numClick('ン'),
                      swipeRight: () => controller.numClick('ー'),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.width / 5,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
