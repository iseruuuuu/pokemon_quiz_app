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
                    ? ListView.builder(
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
                    )
                    : Container(),
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
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlickKeyboard(
                        text: '???',
                        callback: () => controller.numClick('???'),
                        swipeLeft: () => controller.numClick('???'),
                        swipeUp: () => controller.numClick('???'),
                        swipeRight: () => controller.numClick('???'),
                        swipeDown: () => controller.numClick('???'),
                      ),
                      FlickKeyboard(
                        text: '???',
                        callback: () => controller.numClick('???'),
                        swipeLeft: () => controller.numClick('???'),
                        swipeUp: () => controller.numClick('???'),
                        swipeRight: () => controller.numClick('???'),
                        swipeDown: () => controller.numClick('???'),
                      ),
                      FlickKeyboard(
                        text: '???',
                        callback: () => controller.numClick('???'),
                        swipeLeft: () => controller.numClick('???'),
                        swipeUp: () => controller.numClick('???'),
                        swipeRight: () => controller.numClick('???'),
                        swipeDown: () => controller.numClick('???'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlickKeyboard(
                        text: '???',
                        callback: () => controller.numClick('???'),
                        swipeLeft: () => controller.numClick('???'),
                        swipeUp: () => controller.numClick('???'),
                        swipeRight: () => controller.numClick('???'),
                        swipeDown: () => controller.numClick('???'),
                      ),
                      FlickKeyboard(
                        text: '???',
                        callback: () => controller.numClick('???'),
                        swipeLeft: () => controller.numClick('???'),
                        swipeUp: () => controller.numClick('???'),
                        swipeRight: () => controller.numClick('???'),
                        swipeDown: () => controller.numClick('???'),
                      ),
                      FlickKeyboard(
                        text: '???',
                        callback: () => controller.numClick('???'),
                        swipeLeft: () => controller.numClick('???'),
                        swipeUp: () => controller.numClick('???'),
                        swipeRight: () => controller.numClick('???'),
                        swipeDown: () => controller.numClick('???'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlickKeyboard(
                        text: '???',
                        callback: () => controller.numClick('???'),
                        swipeLeft: () => controller.numClick('???'),
                        swipeUp: () => controller.numClick('???'),
                        swipeRight: () => controller.numClick('???'),
                        swipeDown: () => controller.numClick('???'),
                      ),
                      FlickKeyboard(
                        text: '???',
                        callback: () => controller.numClick('???'),
                        swipeUp: () => controller.numClick('???'),
                        swipeDown: () => controller.numClick('???'),
                      ),
                      FlickKeyboard(
                        text: '???',
                        callback: () => controller.numClick('???'),
                        swipeLeft: () => controller.numClick('???'),
                        swipeUp: () => controller.numClick('???'),
                        swipeRight: () => controller.numClick('???'),
                        swipeDown: () => controller.numClick('???'),
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
                        text: '???',
                        callback: () => controller.numClick('???'),
                        swipeLeft: () => controller.numClick('???'),
                        swipeUp: () => controller.numClick('???'),
                        swipeRight: () => controller.numClick('???'),
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
