import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/screen/item/flick_keyboard/flick_keyboard.dart';

class FlickKeyboardWidget extends StatelessWidget {
  const FlickKeyboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            FlickKeyboard(
              text: 'ア',
              callback: () {},
            ),
            FlickKeyboard(
              text: 'カ',
              callback: () {},
            ),
            FlickKeyboard(
              text: 'サ',
              callback: () {},
            ),
          ],
        ),
        Row(
          children: [
            FlickKeyboard(
              text: 'タ',
              callback: () {},
            ),
            FlickKeyboard(
              text: 'ナ',
              callback: () {},
            ),
            FlickKeyboard(
              text: 'ハ',
              callback: () {},
            ),
          ],
        ),
        Row(
          children: [
            FlickKeyboard(
              text: 'マ',
              callback: () {},
            ),
            FlickKeyboard(
              text: 'ヤ',
              callback: () {},
            ),
            FlickKeyboard(
              text: 'ラ',
              callback: () {},
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.width / 5,
            ),
            FlickKeyboard(
              text: 'ワ',
              callback: () {},
            ),
            FlickKeyboard(
              text: 'ー',
              callback: () {},
            ),
          ],
        ),
      ],
    );
  }
}
