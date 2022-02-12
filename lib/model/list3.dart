import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class Pokemon3 {
  final int id;
  final String word;
  final bool isCollect;
  final bool isYellow;

  Pokemon3({
    required this.id,
    required this.word,
    required this.isCollect,
    required this.isYellow,
  });

  const Pokemon3.withId({
    required this.id,
    required this.word,
    required this.isCollect,
    required this.isYellow,
  });

  Pokemon3 copyWith({
    int? id,
    String? word,
    bool? isCollect,
    bool? isYellow,
  }) {
    return Pokemon3.withId(
      id: id ?? this.id,
      word: word ?? this.word,
      isCollect: isCollect ?? this.isCollect,
      isYellow: isYellow ?? this.isYellow,
    );
  }

  Map toJson() {
    return {
      'id': id,
      'word': word,
      'isCollect': isCollect,
      'isYellow': isYellow,
    };
  }

  factory Pokemon3.fromJson(String json) {
    final mapData = jsonDecode(json);
    return Pokemon3.withId(
      id: mapData['id'] as int,
      word: mapData['word'] as String,
      isCollect: mapData['isCollect'] as bool,
      isYellow:  mapData['isYellow'] as bool,
    );
  }
}
