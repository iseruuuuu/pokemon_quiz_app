import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/model/list.dart';
import 'package:pokemon_quiz_app/model/list2.dart';
import 'package:pokemon_quiz_app/model/list3.dart';
import 'package:pokemon_quiz_app/model/list4.dart';
import 'package:pokemon_quiz_app/model/list5.dart';

import 'container_item2.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({
    Key? key,
    required this.index,
    required this.pokemon,
    required this.pokemon2,
    required this.pokemon3,
    required this.pokemon4,
    required this.pokemon5,
  }) : super(key: key);

  final int index;
  final Pokemon pokemon;
  final Pokemon2 pokemon2;
  final Pokemon3 pokemon3;
  final Pokemon4 pokemon4;
  final Pokemon5 pokemon5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContainerItem2(
          text: pokemon.word,
          isCollect: pokemon.isCollect,
          isYellow: pokemon.isYellow,
        ),
        ContainerItem2(
          text: pokemon2.word,
          isCollect: pokemon2.isCollect,
          isYellow: pokemon2.isYellow,
        ),
        ContainerItem2(
          text: pokemon3.word,
          isCollect: pokemon3.isCollect,
          isYellow: pokemon3.isYellow,
        ),
        ContainerItem2(
          text: pokemon4.word,
          isCollect: pokemon4.isCollect,
          isYellow: pokemon4.isYellow,
        ),
        ContainerItem2(
          text: pokemon5.word,
          isCollect: pokemon5.isCollect,
          isYellow: pokemon5.isYellow,
        ),
      ],
    );
  }
}
