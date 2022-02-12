import 'package:flutter/material.dart';
import 'package:pokemon_quiz_app/model/list.dart';

import 'container_item2.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({
    Key? key,
    required this.index,
    required this.pokemon,
  }) : super(key: key);

  final int index;
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(Controller(), tag: '');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContainerItem2(
          text: pokemon.word,
          isCollect: pokemon.isCollect,
        ),
        ContainerItem2(
          text: pokemon.word,
          isCollect: pokemon.isCollect,
        ),
        ContainerItem2(
          text: pokemon.word,
          isCollect: pokemon.isCollect,
        ),
        ContainerItem2(
          text: pokemon.word,
          isCollect: pokemon.isCollect,
        ),
        ContainerItem2(
          text: pokemon.word,
          isCollect: pokemon.isCollect,
        ),
      ],
    );
  }
}
