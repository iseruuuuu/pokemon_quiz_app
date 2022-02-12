import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_quiz_app/constant/pokemon_list.dart';
import 'dart:math' as math;
import 'package:pokemon_quiz_app/model/list.dart';
import 'package:pokemon_quiz_app/model/list2.dart';
import 'package:pokemon_quiz_app/model/list3.dart';
import 'package:pokemon_quiz_app/model/list4.dart';
import 'package:pokemon_quiz_app/model/list5.dart';
import 'package:pokemon_quiz_app/screen/item/example/example_screen.dart';
import 'package:slide_popup_dialog_null_safety/slide_popup_dialog.dart'
    as slideDialog;

class HomeScreenController extends GetxController {
  //答えの名前
  var name = ''.obs;

  //答えのため
  var one = ''.obs;
  var two = ''.obs;
  var three = ''.obs;
  var four = ''.obs;
  var five = ''.obs;

  //解答用
  var answerOne = ''.obs;
  var answerTwo = ''.obs;
  var answerThree = ''.obs;
  var answerFour = ''.obs;
  var answerFive = ''.obs;

  var isCorrect1 = false.obs;
  var isCorrect2 = false.obs;
  var isCorrect3 = false.obs;
  var isCorrect4 = false.obs;
  var isCorrect5 = false.obs;

  var answerOne2 = ''.obs;
  var answerTwo2 = ''.obs;
  var answerThree2 = ''.obs;
  var answerFour2 = ''.obs;
  var answerFive2 = ''.obs;

  var counts = 0;

  final pokemon = <Pokemon>[].obs;
  final pokemon2 = <Pokemon2>[].obs;
  final pokemon3 = <Pokemon3>[].obs;
  final pokemon4 = <Pokemon4>[].obs;
  final pokemon5 = <Pokemon5>[].obs;

  @override
  void onInit() {
    super.onInit();
    openExplainDialog();
    getPokemon();
  }

  void getPokemon() {
    var rand = math.Random();
    var index = rand.nextInt(152);
    var pokemon = PokemonList[index];
    name.value = pokemon;
    one.value = pokemon[0];
    two.value = pokemon[1];
    three.value = pokemon[2];
    four.value = pokemon[3];
    five.value = pokemon[4];
  }

  void openExplainDialog() async {
    await Future.delayed(const Duration(seconds: 1));
    slideDialog.showSlideDialog(
      context: Get.overlayContext!,
      child: const ExampleScreen(),
    );
  }

  void numClick(String text) {
    switch (counts) {
      case 0:
        answerOne.value = text;
        counts++;
        break;
      case 1:
        answerTwo.value = text;
        counts++;
        break;
      case 2:
        answerThree.value = text;
        counts++;
        break;
      case 3:
        answerFour.value = text;
        counts++;
        break;
      case 4:
        answerFive.value = text;
        counts++;
        break;
      case 5:
      default:
        break;
    }
    print(counts);
  }

  void delete() {
    switch (counts) {
      case 0:
        break;
      case 1:
        answerOne.value = '';
        counts--;
        break;
      case 2:
        answerTwo.value = '';
        counts--;
        break;
      case 3:
        answerThree.value = '';
        counts--;
        break;
      case 4:
        answerFour.value = '';
        counts--;
        break;
      case 5:
        answerFive.value = '';
        counts--;
        break;
      default:
        break;
    }
    print(counts);
  }

  void onTapSubmit() {
    addBlank();
    //TODO あっているかどうかを確認する
    checkAnswer();

    //TODO 履歴用にリストに入れる。
    answerOne2.value = answerOne.value;
    answerTwo2.value = answerTwo.value;
    answerThree2.value = answerThree.value;
    answerFour2.value = answerFour.value;
    answerFive2.value = answerFive.value;

    //TODo 最初の値を消す。
    answerOne.value = '';
    answerTwo.value = '';
    answerThree.value = '';
    answerFour.value = '';
    answerFive.value = '';

    counts = 0;
  }

  void checkAnswer() {
    if (answerOne.value == one.value) {
      isCorrect1.value = true;
    } else {
      isCorrect1.value = false;
    }
    if (answerTwo.value == two.value) {
      isCorrect2.value = true;
    } else {
      isCorrect2.value = false;
    }
    if (answerThree.value == three.value) {
      isCorrect3.value = true;
    } else {
      isCorrect3.value = false;
    }
    if (answerFour.value == four.value) {
      isCorrect4.value = true;
    } else {
      isCorrect4.value = false;
    }
    if (answerFive.value == five.value) {
      isCorrect5.value = true;
    } else {
      isCorrect5.value = false;
    }
    checkComplete();
    addList();
  }

  void checkComplete() {
    if (isCorrect1.value == true &&
        isCorrect2.value == true &&
        isCorrect3.value == true &&
        isCorrect4.value == true &&
        isCorrect5.value == true) {
      onTapClear();
    }
  }

  void onTapClear() {
    //TODO
  }

  void addBlank() {
    if (answerOne.value == '') {
      answerOne.value = '　';
    }
    if (answerTwo.value == '') {
      answerTwo.value = '　';
    }
    if (answerThree.value == '') {
      answerThree.value = '　';
    }
    if (answerFour.value == '') {
      answerFour.value = '　';
    }
    if (answerFive.value == '') {
      answerFive.value = '　';
    }
  }

  void addList() {
    final pokemons1 = Pokemon(
      id: 0,
      word: answerOne.value,
      isCollect: isCorrect1.value,
    );
    final pokemons2 = Pokemon2(
      id: 0,
      word: answerTwo.value,
      isCollect: isCorrect2.value,
    );
    final pokemons3 = Pokemon3(
      id: 0,
      word: answerThree.value,
      isCollect: isCorrect3.value,
    );

    final pokemons4 = Pokemon4(
      id: 0,
      word: answerFour.value,
      isCollect: isCorrect4.value,
    );

    final pokemons5 = Pokemon5(
      id: 0,
      word: answerFive.value,
      isCollect: isCorrect5.value,
    );

    pokemon.add(pokemons1);
    pokemon2.add(pokemons2);
    pokemon3.add(pokemons3);
    pokemon4.add(pokemons4);
    pokemon5.add(pokemons5);
  }

  void changeWord1() {
    if (answerOne.value == 'ア') {
      answerOne.value = 'ァ';
    } else if (answerOne.value == 'ァ') {
      answerOne.value = 'ア';
    }
    if (answerOne.value == 'イ') {
      answerOne.value = 'ィ';
    } else if (answerOne.value == 'ィ') {
      answerOne.value = 'イ';
    }
    if (answerOne.value == 'ウ') {
      answerOne.value = 'ゥ';
    } else if (answerOne.value == 'ゥ') {
      answerOne.value = 'ウ';
    }
    if (answerOne.value == 'エ') {
      answerOne.value = 'ェ';
    } else if (answerOne.value == 'ェ') {
      answerOne.value = 'エ';
    }
    if (answerOne.value == 'オ') {
      answerOne.value = 'ォ';
    } else if (answerOne.value == 'ォ') {
      answerOne.value = 'オ';
    }
    if (answerOne.value == 'カ') {
      answerOne.value = 'ガ';
    } else if (answerOne.value == 'ガ') {
      answerOne.value = 'カ';
    }
    if (answerOne.value == 'キ') {
      answerOne.value = 'ギ';
    } else if (answerOne.value == 'ギ') {
      answerOne.value = 'キ';
    }
    if (answerOne.value == 'ク') {
      answerOne.value = 'グ';
    } else if (answerOne.value == 'グ') {
      answerOne.value = 'ク';
    }
    if (answerOne.value == 'ケ') {
      answerOne.value = 'ゲ';
    } else if (answerOne.value == 'ゲ') {
      answerOne.value = 'ケ';
    }
    if (answerOne.value == 'コ') {
      answerOne.value = 'ゴ';
    } else if (answerOne.value == 'ゴ') {
      answerOne.value = 'コ';
    }
    if (answerOne.value == 'サ') {
      answerOne.value = 'ザ';
    } else if (answerOne.value == 'ザ') {
      answerOne.value = 'サ';
    }
    if (answerOne.value == 'シ') {
      answerOne.value = 'ジ';
    } else if (answerOne.value == 'ジ') {
      answerOne.value = 'シ';
    }
    if (answerOne.value == 'ス') {
      answerOne.value = 'ズ';
    } else if (answerOne.value == 'ズ') {
      answerOne.value = 'ス';
    }
    if (answerOne.value == 'セ') {
      answerOne.value = 'ゼ';
    } else if (answerOne.value == 'ゼ') {
      answerOne.value = 'セ';
    }
    if (answerOne.value == 'ソ') {
      answerOne.value = 'ゾ';
    } else if (answerOne.value == 'ゾ') {
      answerOne.value = 'ソ';
    }
    if (answerOne.value == 'タ') {
      answerOne.value = 'ダ';
    } else if (answerOne.value == 'ダ') {
      answerOne.value = 'タ';
    }
    if (answerOne.value == 'チ') {
      answerOne.value = 'ヂ';
    } else if (answerOne.value == 'ヂ') {
      answerOne.value = 'チ';
    }
    if (answerOne.value == 'ツ') {
      answerOne.value = 'ヅ';
    } else if (answerOne.value == 'ヅ') {
      answerOne.value = 'ッ';
    } else if (answerOne.value == 'ッ') {
      answerOne.value = 'ツ';
    }
    if (answerOne.value == 'テ') {
      answerOne.value = 'デ';
    } else if (answerOne.value == 'デ') {
      answerOne.value = 'テ';
    }
    if (answerOne.value == 'ト') {
      answerOne.value = 'ド';
    } else if (answerOne.value == 'ド') {
      answerOne.value = 'ト';
    }
    if (answerOne.value == 'ハ') {
      answerOne.value = 'バ';
    } else if (answerOne.value == 'バ') {
      answerOne.value = 'パ';
    } else if (answerOne.value == 'パ') {
      answerOne.value = 'ハ';
    }
    if (answerOne.value == 'ヒ') {
      answerOne.value = 'ビ';
    } else if (answerOne.value == 'ビ') {
      answerOne.value = 'ピ';
    } else if (answerOne.value == 'ピ') {
      answerOne.value = 'ヒ';
    }
    if (answerOne.value == 'フ') {
      answerOne.value = 'ブ';
    } else if (answerOne.value == 'ブ') {
      answerOne.value = 'プ';
    } else if (answerOne.value == 'プ') {
      answerOne.value = 'フ';
    }
    if (answerOne.value == 'ヘ') {
      answerOne.value = 'ベ';
    } else if (answerOne.value == 'ベ') {
      answerOne.value = 'ペ';
    } else if (answerOne.value == 'ペ') {
      answerOne.value = 'ヘ';
    }
    if (answerOne.value == 'ホ') {
      answerOne.value = 'ボ';
    } else if (answerOne.value == 'ボ') {
      answerOne.value = 'ポ';
    } else if (answerOne.value == 'ポ') {
      answerOne.value = 'ホ';
    }
    if (answerOne.value == 'ヤ') {
      answerOne.value = 'ャ';
    } else if (answerOne.value == 'ャ') {
      answerOne.value = 'ヤ';
    }
    if (answerOne.value == 'ユ') {
      answerOne.value = 'ュ';
    } else if (answerOne.value == 'ュ') {
      answerOne.value = 'ユ';
    }
    if (answerOne.value == 'ヨ') {
      answerOne.value = 'ョ';
    } else if (answerOne.value == 'ョ') {
      answerOne.value = 'ヨ';
    }
  }

  void changeWord2() {
    if (answerTwo.value == 'ア') {
      answerTwo.value = 'ァ';
    } else if (answerTwo.value == 'ァ') {
      answerTwo.value = 'ア';
    }
    if (answerTwo.value == 'イ') {
      answerTwo.value = 'ィ';
    } else if (answerTwo.value == 'ィ') {
      answerTwo.value = 'イ';
    }
    if (answerTwo.value == 'ウ') {
      answerTwo.value = 'ゥ';
    } else if (answerTwo.value == 'ゥ') {
      answerTwo.value = 'ウ';
    }
    if (answerTwo.value == 'エ') {
      answerTwo.value = 'ェ';
    } else if (answerTwo.value == 'ェ') {
      answerTwo.value = 'エ';
    }
    if (answerTwo.value == 'オ') {
      answerTwo.value = 'ォ';
    } else if (answerTwo.value == 'ォ') {
      answerTwo.value = 'オ';
    }
    if (answerTwo.value == 'カ') {
      answerTwo.value = 'ガ';
    } else if (answerTwo.value == 'ガ') {
      answerTwo.value = 'カ';
    }
    if (answerTwo.value == 'キ') {
      answerTwo.value = 'ギ';
    } else if (answerTwo.value == 'ギ') {
      answerTwo.value = 'キ';
    }
    if (answerTwo.value == 'ク') {
      answerTwo.value = 'グ';
    } else if (answerTwo.value == 'グ') {
      answerTwo.value = 'ク';
    }
    if (answerTwo.value == 'ケ') {
      answerTwo.value = 'ゲ';
    } else if (answerTwo.value == 'ゲ') {
      answerTwo.value = 'ケ';
    }
    if (answerTwo.value == 'コ') {
      answerTwo.value = 'ゴ';
    } else if (answerTwo.value == 'ゴ') {
      answerTwo.value = 'コ';
    }
    if (answerTwo.value == 'サ') {
      answerTwo.value = 'ザ';
    } else if (answerTwo.value == 'ザ') {
      answerTwo.value = 'サ';
    }
    if (answerTwo.value == 'シ') {
      answerTwo.value = 'ジ';
    } else if (answerTwo.value == 'ジ') {
      answerTwo.value = 'シ';
    }
    if (answerTwo.value == 'ス') {
      answerTwo.value = 'ズ';
    } else if (answerTwo.value == 'ズ') {
      answerTwo.value = 'ス';
    }
    if (answerTwo.value == 'セ') {
      answerTwo.value = 'ゼ';
    } else if (answerTwo.value == 'ゼ') {
      answerTwo.value = 'セ';
    }
    if (answerTwo.value == 'ソ') {
      answerTwo.value = 'ゾ';
    } else if (answerTwo.value == 'ゾ') {
      answerTwo.value = 'ソ';
    }
    if (answerTwo.value == 'タ') {
      answerTwo.value = 'ダ';
    } else if (answerTwo.value == 'ダ') {
      answerTwo.value = 'タ';
    }
    if (answerTwo.value == 'チ') {
      answerTwo.value = 'ヂ';
    } else if (answerTwo.value == 'ヂ') {
      answerTwo.value = 'チ';
    }
    if (answerTwo.value == 'ツ') {
      answerTwo.value = 'ヅ';
    } else if (answerTwo.value == 'ヅ') {
      answerTwo.value = 'ッ';
    } else if (answerTwo.value == 'ッ') {
      answerTwo.value = 'ツ';
    }
    if (answerTwo.value == 'テ') {
      answerTwo.value = 'デ';
    } else if (answerTwo.value == 'デ') {
      answerTwo.value = 'テ';
    }
    if (answerTwo.value == 'ト') {
      answerTwo.value = 'ド';
    } else if (answerTwo.value == 'ド') {
      answerTwo.value = 'ト';
    }
    if (answerTwo.value == 'ハ') {
      answerTwo.value = 'バ';
    } else if (answerTwo.value == 'バ') {
      answerTwo.value = 'パ';
    } else if (answerTwo.value == 'パ') {
      answerTwo.value = 'ハ';
    }
    if (answerTwo.value == 'ヒ') {
      answerTwo.value = 'ビ';
    } else if (answerTwo.value == 'ビ') {
      answerTwo.value = 'ピ';
    } else if (answerTwo.value == 'ピ') {
      answerTwo.value = 'ヒ';
    }
    if (answerTwo.value == 'フ') {
      answerTwo.value = 'ブ';
    } else if (answerTwo.value == 'ブ') {
      answerTwo.value = 'プ';
    } else if (answerTwo.value == 'プ') {
      answerTwo.value = 'フ';
    }
    if (answerTwo.value == 'ヘ') {
      answerTwo.value = 'ベ';
    } else if (answerTwo.value == 'ベ') {
      answerTwo.value = 'ペ';
    } else if (answerTwo.value == 'ペ') {
      answerTwo.value = 'ヘ';
    }
    if (answerTwo.value == 'ホ') {
      answerTwo.value = 'ボ';
    } else if (answerTwo.value == 'ボ') {
      answerTwo.value = 'ポ';
    } else if (answerTwo.value == 'ポ') {
      answerTwo.value = 'ホ';
    }
    if (answerTwo.value == 'ヤ') {
      answerTwo.value = 'ャ';
    } else if (answerTwo.value == 'ャ') {
      answerTwo.value = 'ヤ';
    }
    if (answerTwo.value == 'ユ') {
      answerTwo.value = 'ュ';
    } else if (answerTwo.value == 'ュ') {
      answerTwo.value = 'ユ';
    }
    if (answerTwo.value == 'ヨ') {
      answerTwo.value = 'ョ';
    } else if (answerTwo.value == 'ョ') {
      answerTwo.value = 'ヨ';
    }
  }

  void changeWord3() {
    if (answerThree.value == 'ア') {
      answerThree.value = 'ァ';
    } else if (answerThree.value == 'ァ') {
      answerThree.value = 'ア';
    }
    if (answerThree.value == 'イ') {
      answerThree.value = 'ィ';
    } else if (answerThree.value == 'ィ') {
      answerThree.value = 'イ';
    }
    if (answerThree.value == 'ウ') {
      answerThree.value = 'ゥ';
    } else if (answerThree.value == 'ゥ') {
      answerThree.value = 'ウ';
    }
    if (answerThree.value == 'エ') {
      answerThree.value = 'ェ';
    } else if (answerThree.value == 'ェ') {
      answerThree.value = 'エ';
    }
    if (answerThree.value == 'オ') {
      answerThree.value = 'ォ';
    } else if (answerThree.value == 'ォ') {
      answerThree.value = 'オ';
    }
    if (answerThree.value == 'カ') {
      answerThree.value = 'ガ';
    } else if (answerThree.value == 'ガ') {
      answerThree.value = 'カ';
    }
    if (answerThree.value == 'キ') {
      answerThree.value = 'ギ';
    } else if (answerThree.value == 'ギ') {
      answerThree.value = 'キ';
    }
    if (answerThree.value == 'ク') {
      answerThree.value = 'グ';
    } else if (answerThree.value == 'グ') {
      answerThree.value = 'ク';
    }
    if (answerThree.value == 'ケ') {
      answerThree.value = 'ゲ';
    } else if (answerThree.value == 'ゲ') {
      answerThree.value = 'ケ';
    }
    if (answerThree.value == 'コ') {
      answerThree.value = 'ゴ';
    } else if (answerThree.value == 'ゴ') {
      answerThree.value = 'コ';
    }
    if (answerThree.value == 'サ') {
      answerThree.value = 'ザ';
    } else if (answerThree.value == 'ザ') {
      answerThree.value = 'サ';
    }
    if (answerThree.value == 'シ') {
      answerThree.value = 'ジ';
    } else if (answerThree.value == 'ジ') {
      answerThree.value = 'シ';
    }
    if (answerThree.value == 'ス') {
      answerThree.value = 'ズ';
    } else if (answerThree.value == 'ズ') {
      answerThree.value = 'ス';
    }
    if (answerThree.value == 'セ') {
      answerThree.value = 'ゼ';
    } else if (answerThree.value == 'ゼ') {
      answerThree.value = 'セ';
    }
    if (answerThree.value == 'ソ') {
      answerThree.value = 'ゾ';
    } else if (answerThree.value == 'ゾ') {
      answerThree.value = 'ソ';
    }
    if (answerThree.value == 'タ') {
      answerThree.value = 'ダ';
    } else if (answerThree.value == 'ダ') {
      answerThree.value = 'タ';
    }
    if (answerThree.value == 'チ') {
      answerThree.value = 'ヂ';
    } else if (answerThree.value == 'ヂ') {
      answerThree.value = 'チ';
    }
    if (answerThree.value == 'ツ') {
      answerThree.value = 'ヅ';
    } else if (answerThree.value == 'ヅ') {
      answerThree.value = 'ッ';
    } else if (answerThree.value == 'ッ') {
      answerThree.value = 'ツ';
    }
    if (answerThree.value == 'テ') {
      answerThree.value = 'デ';
    } else if (answerThree.value == 'デ') {
      answerThree.value = 'テ';
    }
    if (answerThree.value == 'ト') {
      answerThree.value = 'ド';
    } else if (answerThree.value == 'ド') {
      answerThree.value = 'ト';
    }
    if (answerThree.value == 'ハ') {
      answerThree.value = 'バ';
    } else if (answerThree.value == 'バ') {
      answerThree.value = 'パ';
    } else if (answerThree.value == 'パ') {
      answerThree.value = 'ハ';
    }
    if (answerThree.value == 'ヒ') {
      answerThree.value = 'ビ';
    } else if (answerThree.value == 'ビ') {
      answerThree.value = 'ピ';
    } else if (answerThree.value == 'ピ') {
      answerThree.value = 'ヒ';
    }
    if (answerThree.value == 'フ') {
      answerThree.value = 'ブ';
    } else if (answerThree.value == 'ブ') {
      answerThree.value = 'プ';
    } else if (answerThree.value == 'プ') {
      answerThree.value = 'フ';
    }
    if (answerThree.value == 'ヘ') {
      answerThree.value = 'ベ';
    } else if (answerThree.value == 'ベ') {
      answerThree.value = 'ペ';
    } else if (answerThree.value == 'ペ') {
      answerThree.value = 'ヘ';
    }
    if (answerThree.value == 'ホ') {
      answerThree.value = 'ボ';
    } else if (answerThree.value == 'ボ') {
      answerThree.value = 'ポ';
    } else if (answerThree.value == 'ポ') {
      answerThree.value = 'ホ';
    }
    if (answerThree.value == 'ヤ') {
      answerThree.value = 'ャ';
    } else if (answerThree.value == 'ャ') {
      answerThree.value = 'ヤ';
    }
    if (answerThree.value == 'ユ') {
      answerThree.value = 'ュ';
    } else if (answerThree.value == 'ュ') {
      answerThree.value = 'ユ';
    }
    if (answerThree.value == 'ヨ') {
      answerThree.value = 'ョ';
    } else if (answerThree.value == 'ョ') {
      answerThree.value = 'ヨ';
    }
  }

  void changeWord4() {
    if (answerFour.value == 'ア') {
      answerFour.value = 'ァ';
    } else if (answerFour.value == 'ァ') {
      answerFour.value = 'ア';
    }
    if (answerFour.value == 'イ') {
      answerFour.value = 'ィ';
    } else if (answerFour.value == 'ィ') {
      answerFour.value = 'イ';
    }
    if (answerFour.value == 'ウ') {
      answerFour.value = 'ゥ';
    } else if (answerFour.value == 'ゥ') {
      answerFour.value = 'ウ';
    }
    if (answerFour.value == 'エ') {
      answerFour.value = 'ェ';
    } else if (answerFour.value == 'ェ') {
      answerFour.value = 'エ';
    }
    if (answerFour.value == 'オ') {
      answerFour.value = 'ォ';
    } else if (answerFour.value == 'ォ') {
      answerFour.value = 'オ';
    }
    if (answerFour.value == 'カ') {
      answerFour.value = 'ガ';
    } else if (answerFour.value == 'ガ') {
      answerFour.value = 'カ';
    }
    if (answerFour.value == 'キ') {
      answerFour.value = 'ギ';
    } else if (answerFour.value == 'ギ') {
      answerFour.value = 'キ';
    }
    if (answerFour.value == 'ク') {
      answerFour.value = 'グ';
    } else if (answerFour.value == 'グ') {
      answerFour.value = 'ク';
    }
    if (answerFour.value == 'ケ') {
      answerFour.value = 'ゲ';
    } else if (answerFour.value == 'ゲ') {
      answerFour.value = 'ケ';
    }
    if (answerFour.value == 'コ') {
      answerFour.value = 'ゴ';
    } else if (answerFour.value == 'ゴ') {
      answerFour.value = 'コ';
    }
    if (answerFour.value == 'サ') {
      answerFour.value = 'ザ';
    } else if (answerFour.value == 'ザ') {
      answerFour.value = 'サ';
    }
    if (answerFour.value == 'シ') {
      answerFour.value = 'ジ';
    } else if (answerFour.value == 'ジ') {
      answerFour.value = 'シ';
    }
    if (answerFour.value == 'ス') {
      answerFour.value = 'ズ';
    } else if (answerFour.value == 'ズ') {
      answerFour.value = 'ス';
    }
    if (answerFour.value == 'セ') {
      answerFour.value = 'ゼ';
    } else if (answerFour.value == 'ゼ') {
      answerFour.value = 'セ';
    }
    if (answerFour.value == 'ソ') {
      answerFour.value = 'ゾ';
    } else if (answerFour.value == 'ゾ') {
      answerFour.value = 'ソ';
    }
    if (answerFour.value == 'タ') {
      answerFour.value = 'ダ';
    } else if (answerFour.value == 'ダ') {
      answerFour.value = 'タ';
    }
    if (answerFour.value == 'チ') {
      answerFour.value = 'ヂ';
    } else if (answerFour.value == 'ヂ') {
      answerFour.value = 'チ';
    }
    if (answerFour.value == 'ツ') {
      answerFour.value = 'ヅ';
    } else if (answerFour.value == 'ヅ') {
      answerFour.value = 'ッ';
    } else if (answerFour.value == 'ッ') {
      answerFour.value = 'ツ';
    }
    if (answerFour.value == 'テ') {
      answerFour.value = 'デ';
    } else if (answerFour.value == 'デ') {
      answerFour.value = 'テ';
    }
    if (answerFour.value == 'ト') {
      answerFour.value = 'ド';
    } else if (answerFour.value == 'ド') {
      answerFour.value = 'ト';
    }
    if (answerFour.value == 'ハ') {
      answerFour.value = 'バ';
    } else if (answerFour.value == 'バ') {
      answerFour.value = 'パ';
    } else if (answerFour.value == 'パ') {
      answerFour.value = 'ハ';
    }
    if (answerFour.value == 'ヒ') {
      answerFour.value = 'ビ';
    } else if (answerFour.value == 'ビ') {
      answerFour.value = 'ピ';
    } else if (answerFour.value == 'ピ') {
      answerFour.value = 'ヒ';
    }
    if (answerFour.value == 'フ') {
      answerFour.value = 'ブ';
    } else if (answerFour.value == 'ブ') {
      answerFour.value = 'プ';
    } else if (answerFour.value == 'プ') {
      answerFour.value = 'フ';
    }
    if (answerFour.value == 'ヘ') {
      answerFour.value = 'ベ';
    } else if (answerFour.value == 'ベ') {
      answerFour.value = 'ペ';
    } else if (answerFour.value == 'ペ') {
      answerFour.value = 'ヘ';
    }
    if (answerFour.value == 'ホ') {
      answerFour.value = 'ボ';
    } else if (answerFour.value == 'ボ') {
      answerFour.value = 'ポ';
    } else if (answerFour.value == 'ポ') {
      answerFour.value = 'ホ';
    }
    if (answerFour.value == 'ヤ') {
      answerFour.value = 'ャ';
    } else if (answerFour.value == 'ャ') {
      answerFour.value = 'ヤ';
    }
    if (answerFour.value == 'ユ') {
      answerFour.value = 'ュ';
    } else if (answerFour.value == 'ュ') {
      answerFour.value = 'ユ';
    }
    if (answerFour.value == 'ヨ') {
      answerFour.value = 'ョ';
    } else if (answerFour.value == 'ョ') {
      answerFour.value = 'ヨ';
    }
  }

  void changeWord5() {
    if (answerFive.value == 'ア') {
      answerFive.value = 'ァ';
    } else if (answerFive.value == 'ァ') {
      answerFive.value = 'ア';
    }
    if (answerFive.value == 'イ') {
      answerFive.value = 'ィ';
    } else if (answerFive.value == 'ィ') {
      answerFive.value = 'イ';
    }
    if (answerFive.value == 'ウ') {
      answerFive.value = 'ゥ';
    } else if (answerFive.value == 'ゥ') {
      answerFive.value = 'ウ';
    }
    if (answerFive.value == 'エ') {
      answerFive.value = 'ェ';
    } else if (answerFive.value == 'ェ') {
      answerFive.value = 'エ';
    }
    if (answerFive.value == 'オ') {
      answerFive.value = 'ォ';
    } else if (answerFive.value == 'ォ') {
      answerFive.value = 'オ';
    }
    if (answerFive.value == 'カ') {
      answerFive.value = 'ガ';
    } else if (answerFive.value == 'ガ') {
      answerFive.value = 'カ';
    }
    if (answerFive.value == 'キ') {
      answerFive.value = 'ギ';
    } else if (answerFive.value == 'ギ') {
      answerFive.value = 'キ';
    }
    if (answerFive.value == 'ク') {
      answerFive.value = 'グ';
    } else if (answerFive.value == 'グ') {
      answerFive.value = 'ク';
    }
    if (answerFive.value == 'ケ') {
      answerFive.value = 'ゲ';
    } else if (answerFive.value == 'ゲ') {
      answerFive.value = 'ケ';
    }
    if (answerFive.value == 'コ') {
      answerFive.value = 'ゴ';
    } else if (answerFive.value == 'ゴ') {
      answerFive.value = 'コ';
    }
    if (answerFive.value == 'サ') {
      answerFive.value = 'ザ';
    } else if (answerFive.value == 'ザ') {
      answerFive.value = 'サ';
    }
    if (answerFive.value == 'シ') {
      answerFive.value = 'ジ';
    } else if (answerFour.value == 'ジ') {
      answerFive.value = 'シ';
    }
    if (answerFive.value == 'ス') {
      answerFive.value = 'ズ';
    } else if (answerFive.value == 'ズ') {
      answerFive.value = 'ス';
    }
    if (answerFive.value == 'セ') {
      answerFive.value = 'ゼ';
    } else if (answerFive.value == 'ゼ') {
      answerFive.value = 'セ';
    }
    if (answerFive.value == 'ソ') {
      answerFive.value = 'ゾ';
    } else if (answerFive.value == 'ゾ') {
      answerFive.value = 'ソ';
    }
    if (answerFive.value == 'タ') {
      answerFive.value = 'ダ';
    } else if (answerFive.value == 'ダ') {
      answerFive.value = 'タ';
    }
    if (answerFive.value == 'チ') {
      answerFive.value = 'ヂ';
    } else if (answerFive.value == 'ヂ') {
      answerFive.value = 'チ';
    }
    if (answerFive.value == 'ツ') {
      answerFive.value = 'ヅ';
    } else if (answerFive.value == 'ヅ') {
      answerFive.value = 'ッ';
    } else if (answerFive.value == 'ッ') {
      answerFive.value = 'ツ';
    }
    if (answerFive.value == 'テ') {
      answerFive.value = 'デ';
    } else if (answerFive.value == 'デ') {
      answerFive.value = 'テ';
    }
    if (answerFive.value == 'ト') {
      answerFive.value = 'ド';
    } else if (answerFive.value == 'ド') {
      answerFive.value = 'ト';
    }
    if (answerFive.value == 'ハ') {
      answerFive.value = 'バ';
    } else if (answerFive.value == 'バ') {
      answerFive.value = 'パ';
    } else if (answerFive.value == 'パ') {
      answerFive.value = 'ハ';
    }
    if (answerFive.value == 'ヒ') {
      answerFive.value = 'ビ';
    } else if (answerFive.value == 'ビ') {
      answerFive.value = 'ピ';
    } else if (answerFive.value == 'ピ') {
      answerFive.value = 'ヒ';
    }
    if (answerFive.value == 'フ') {
      answerFive.value = 'ブ';
    } else if (answerFive.value == 'ブ') {
      answerFive.value = 'プ';
    } else if (answerFive.value == 'プ') {
      answerFive.value = 'フ';
    }
    if (answerFive.value == 'ヘ') {
      answerFive.value = 'ベ';
    } else if (answerFive.value == 'ベ') {
      answerFive.value = 'ペ';
    } else if (answerFive.value == 'ペ') {
      answerFive.value = 'ヘ';
    }
    if (answerFive.value == 'ホ') {
      answerFive.value = 'ボ';
    } else if (answerFive.value == 'ボ') {
      answerFive.value = 'ポ';
    } else if (answerFive.value == 'ポ') {
      answerFive.value = 'ホ';
    }
    if (answerFive.value == 'ヤ') {
      answerFive.value = 'ャ';
    } else if (answerFive.value == 'ャ') {
      answerFive.value = 'ヤ';
    }
    if (answerFive.value == 'ユ') {
      answerFive.value = 'ュ';
    } else if (answerFive.value == 'ュ') {
      answerFive.value = 'ユ';
    }
    if (answerFive.value == 'ヨ') {
      answerFive.value = 'ョ';
    } else if (answerFive.value == 'ョ') {
      answerFive.value = 'ヨ';
    }
  }
}
