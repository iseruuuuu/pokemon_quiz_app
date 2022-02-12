import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/screen/item/flick_keyboard/flick_keyboard.dart';
import 'package:pokemon_quiz_app/screen/item/list/container_item.dart';
import 'package:pokemon_quiz_app/screen/item/delete/delete_button.dart';
import 'package:pokemon_quiz_app/screen/item/enter/enter_button.dart';
import 'package:pokemon_quiz_app/screen/item/list/list_tile.dart';
import 'home_screen_controller.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController(), tag: '');
    final pokemons1 = controller.pokemon;
    final pokemons2 = controller.pokemon2;
    final pokemons3 = controller.pokemon3;
    final pokemons4 = controller.pokemon4;
    final pokemons5 = controller.pokemon5;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: const Color(0xDD000000),
            title: Text(
              controller.name.value,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 4,
              child: Obx(
                () => pokemons1.isNotEmpty
                    ? Container(
                        //TODO 後で戻す
                        color: Colors.black12,
                        child: ListView.builder(
                          controller: ScrollController(),
                          itemCount: pokemons1.length,
                          itemExtent: 70,
                          reverse: false,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTiles(
                              index: index,
                              pokemon: pokemons1[index],
                              pokemon2: pokemons2[index],
                              pokemon3: pokemons3[index],
                              pokemon4: pokemons4[index],
                              pokemon5: pokemons5[index],
                            );
                          },
                        ),
                      )
                    : Container(
                        color: Colors.black12,
                      ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
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
            ),
            Expanded(
              flex: 7,
              child: Column(
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
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
