import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class Pokemon {
  final int id;
  final String word;
  final bool isCollect;

  Pokemon({
    required this.id,
    required this.word,
    required this.isCollect,
  });

  const Pokemon.withId({
    required this.id,
    required this.word,
    required this.isCollect,
  });

  Pokemon copyWith({
    int? id,
    String? word,
    bool? isCollect,
  }) {
    return Pokemon.withId(
      id: id ?? this.id,
      word: word ?? this.word,
      isCollect: isCollect ?? this.isCollect,
    );
  }

  Map toJson() {
    return {
      'id': id,
      'word': word,
      'isCollect': isCollect,
    };
  }

  factory Pokemon.fromJson(String json) {
    final mapData = jsonDecode(json);
    return Pokemon.withId(
      id: mapData['id'] as int,
      word: mapData['word'] as String,
      isCollect: mapData['isCollect'] as bool,
    );
  }
}
