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
      children: [
        Text(
          'ルール説明',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 15,
            fontWeight: FontWeight.bold,
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
        const SizedBox(height: 20),
        Text(
          '青色は、位置と文字が正しいです',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
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
        Text(
          'どの回答も正解が含まれません。',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '4文字以下の場合のポケモンも回答できます',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'キーボードの入力は日本語のキーボードを下にしています',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 25,
            fontWeight: FontWeight.bold,
          ),
        ),
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
        Text(
          '「ギ」・「ャ」・「ッ」・「プ」など'
          '濁点や小書きは、対象をタップすることで変更できます',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
