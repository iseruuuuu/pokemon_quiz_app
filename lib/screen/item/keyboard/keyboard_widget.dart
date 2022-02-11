import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/screen/item/keyboard/keyboard_item.dart';

class KeyboardWidget extends StatelessWidget {
  const KeyboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Row(
        children: [
          Column(
            children: [
              KeyboardItem(
                onTap: () {},
                text: 'あ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'い',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'う',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'え',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'お',
              ),
            ],
          ),
          Column(
            children: [
              KeyboardItem(
                onTap: () {},
                text: 'か',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'き',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'く',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'け',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'こ',
              ),
            ],
          ),
          Column(
            children: [
              KeyboardItem(
                onTap: () {},
                text: 'さ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'し',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'す',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'せ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'そ',
              ),
            ],
          ),
          Column(
            children: [
              KeyboardItem(
                onTap: () {},
                text: 'た',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'ち',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'つ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'て',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'と',
              ),
            ],
          ),
          Column(
            children: [
              KeyboardItem(
                onTap: () {},
                text: 'な',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'に',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'ぬ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'ね',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'の',
              ),
            ],
          ),
          Column(
            children: [
              KeyboardItem(
                onTap: () {},
                text: 'は',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'ひ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'ふ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'へ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'ほ',
              ),
            ],
          ),
          Column(
            children: [
              KeyboardItem(
                onTap: () {},
                text: 'ま',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'み',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'む',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'め',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'も',
              ),
            ],
          ),
          Column(
            children: [
              KeyboardItem(
                onTap: () {},
                text: 'や',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'ゆ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'よ',
              ),
            ],
          ),
          Column(
            children: [
              KeyboardItem(
                onTap: () {},
                text: 'ら',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'り',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'る',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'れ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'ろ',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KeyboardItem(
                onTap: () {},
                text: 'わ',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'ん',
              ),
              KeyboardItem(
                onTap: () {},
                text: 'ー',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
