import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/screen/item/example/example_item.dart';
import 'package:pokemon_quiz_app/screen/item/example/example_screen_controller.dart';
import 'package:pokemon_quiz_app/screen/item/example/example_widget2.dart';
import 'package:get/get.dart';
import 'example_widget.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ExampleScreenController(), tag: '');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'ルール説明',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const ExampleWidget(
          one: 'ド',
          two: 'ダ',
          three: 'イ',
          four: 'ト',
          five: 'ス',
          isCollectFour: true,
          isCollectFive: false,
          isCollectOne: false,
          isCollectThree: false,
          isCollectTwo: false,
        ),
        const SizedBox(height: 10),
        const ExampleWidget(
          one: 'ナ',
          two: 'エ',
          three: 'ト',
          four: 'ル',
          five: '　',
          isCollectFour: false,
          isCollectFive: false,
          isCollectOne: false,
          isCollectThree: false,
          isCollectTwo: false,
        ),
        const SizedBox(height: 20),
        Obx(
          () => ExampleWidget2(
            one: controller.answerOne.value,
            onTap1: controller.onTap1,
            two: controller.answerTwo.value,
            onTap2: controller.onTap2,
            three: 'ロ',
            four: controller.answerFour.value,
            onTap4: controller.onTap4,
            five: controller.answerFive.value,
            onTap5: controller.onTap5,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 2, right: 10, left: 10),
          child: Text(
            '・青色は正解、赤色は不正解(図1)',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            '・4文字以下の場合のポケモンも回答可能(図2)',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            '・入力は日本語のキーボードになります',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            '・濁点や小書きは、口をタップすることで変更可能(図3)',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 27,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
