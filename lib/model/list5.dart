import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class Pokemon5 {
  final int id;
  final String word;
  final bool isCollect;

  Pokemon5({
    required this.id,
    required this.word,
    required this.isCollect,
  });

  const Pokemon5.withId({
    required this.id,
    required this.word,
    required this.isCollect,
  });

  Pokemon5 copyWith({
    int? id,
    String? word,
    bool? isCollect,
  }) {
    return Pokemon5.withId(
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

  factory Pokemon5.fromJson(String json) {
    final mapData = jsonDecode(json);
    return Pokemon5.withId(
      id: mapData['id'] as int,
      word: mapData['word'] as String,
      isCollect: mapData['isCollect'] as bool,
    );
  }
}
