import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/screen/item/list/container_item.dart';
import 'package:pokemon_quiz_app/screen/item/delete/delete_button.dart';
import 'package:pokemon_quiz_app/screen/item/enter/enter_button.dart';
import 'package:pokemon_quiz_app/screen/item/flick_keyboard/flick_keyboard_widget.dart';
import 'package:pokemon_quiz_app/screen/item/keyboard/keyboard_widget.dart';

import 'home_screen_controller.dart';
import 'item/flick_keyboard/flick_keyboard.dart';
import 'item/list/container_item2.dart';
import 'item/list/list_tile.dart';

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
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            backgroundColor: const Color(0xDD000000),
            title: Text(
              controller.name.value,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Obx(
                () => controller.pokemon.isNotEmpty
                    ? ListView.builder(
                        controller: ScrollController(),
                        itemCount: controller.pokemon.length,
                        itemExtent: 90,
                        itemBuilder: (BuildContext context, int index) {
                          final pokemon = controller.pokemon[index];
                          return Obx(
                            () => ListTiles(
                              index: index,
                              pokemon: pokemon,
                            ),
                          );
                        },
                      )
                    : Container(
                        color: Colors.black12,
                      ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(
                  () => ContainerItem2(
                    text: controller.answerOne2.value,
                    isCollect: controller.isCorrect1.value,
                  ),
                ),
                Obx(
                  () => ContainerItem2(
                    text: controller.answerTwo2.value,
                    isCollect: controller.isCorrect2.value,
                  ),
                ),
                Obx(
                  () => ContainerItem2(
                    text: controller.answerThree2.value,
                    isCollect: controller.isCorrect3.value,
                  ),
                ),
                Obx(
                  () => ContainerItem2(
                    text: controller.answerFour2.value,
                    isCollect: controller.isCorrect4.value,
                  ),
                ),
                Obx(
                  () => ContainerItem2(
                    text: controller.answerFive2.value,
                    isCollect: controller.isCorrect5.value,
                  ),
                ),
              ],
            ),
            Spacer(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => GestureDetector(
                    onTap: controller.changeWord1,
                    child: ContainerItem(
                      text: controller.answerOne.value,
                    ),
                  ),
                ),
                Obx(
                  () => GestureDetector(
                    onTap: controller.changeWord2,
                    child: ContainerItem(
                      text: controller.answerTwo.value,
                    ),
                  ),
                ),
                Obx(
                  () => GestureDetector(
                    onTap: controller.changeWord3,
                    child: ContainerItem(
                      text: controller.answerThree.value,
                    ),
                  ),
                ),
                Obx(
                  () => GestureDetector(
                    onTap: controller.changeWord4,
                    child: ContainerItem(
                      text: controller.answerFour.value,
                    ),
                  ),
                ),
                Obx(
                  () => GestureDetector(
                    onTap: controller.changeWord5,
                    child: ContainerItem(
                      text: controller.answerFive.value,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
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
                    EnterButton(
                      onTap: controller.onTapSubmit,
                    ),
                    FlickKeyboard(
                      text: 'ワ',
                      callback: () => controller.numClick('ワ'),
                      swipeLeft: () => controller.numClick('ヲ'),
                      swipeUp: () => controller.numClick('ン'),
                      swipeRight: () => controller.numClick('ー'),
                    ),
                    DeleteButton(
                      onHold: controller.delete,
                      onTap: controller.delete,
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
