import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class Pokemon4 {
  final int id;
  final String word;
  final bool isCollect;

  Pokemon4({
    required this.id,
    required this.word,
    required this.isCollect,
  });

  const Pokemon4.withId({
    required this.id,
    required this.word,
    required this.isCollect,
  });

  Pokemon4 copyWith({
    int? id,
    String? word,
    bool? isCollect,
  }) {
    return Pokemon4.withId(
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

  factory Pokemon4.fromJson(String json) {
    final mapData = jsonDecode(json);
    return Pokemon4.withId(
      id: mapData['id'] as int,
      word: mapData['word'] as String,
      isCollect: mapData['isCollect'] as bool,
    );
  }
}
