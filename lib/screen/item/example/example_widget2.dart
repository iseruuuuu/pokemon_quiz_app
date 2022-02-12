import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/screen/item/list/container_item.dart';

import 'example_item.dart';

class ExampleWidget2 extends StatelessWidget {
  const ExampleWidget2({
    Key? key,
    required this.one,
    required this.two,
    required this.three,
    required this.four,
    required this.five,
    required this.onTap1,
    required this.onTap2,
    required this.onTap4,
    required this.onTap5,
  }) : super(key: key);

  final String one;
  final String two;
  final String three;
  final String four;
  final String five;

  final Function() onTap1;
  final Function() onTap2;
  final Function() onTap4;
  final Function() onTap5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: onTap1,
          child: ContainerItem(text: one),
        ),
        GestureDetector(
          onTap: onTap2,
          child: ContainerItem(text: two),
        ),
        ContainerItem(text: three),
        GestureDetector(
          onTap: onTap4,
          child: ContainerItem(text: four),
        ),
        GestureDetector(
          onTap: onTap5,
          child: ContainerItem(text: five),
        ),
      ],
    );
  }
}
