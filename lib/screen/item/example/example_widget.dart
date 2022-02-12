import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/screen/item/list/container_item.dart';

import 'example_item.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({
    Key? key,
    required this.one,
    required this.two,
    required this.three,
    required this.four,
    required this.five,
    required this.isCollectOne,
    required this.isCollectTwo,
    required this.isCollectThree,
    required this.isCollectFour,
    required this.isCollectFive,
  }) : super(key: key);

  final String one;
  final String two;
  final String three;
  final String four;
  final String five;

  final bool isCollectOne;
  final bool isCollectTwo;
  final bool isCollectThree;
  final bool isCollectFour;
  final bool isCollectFive;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ExampleItem(
          text: one,
          isCollect: isCollectOne,
        ),
        ExampleItem(
          text: two,
          isCollect: isCollectTwo,
        ),
        ExampleItem(
          text: three,
          isCollect: isCollectThree,
        ),
        ExampleItem(
          text: four,
          isCollect: isCollectFour,
        ),
        ExampleItem(
          text: five,
          isCollect: isCollectFive,
        ),
      ],
    );
  }
}
