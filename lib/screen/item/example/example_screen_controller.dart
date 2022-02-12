import 'package:get/get.dart';

class ExampleScreenController extends GetxController {
  final answerOne = 'ギ'.obs;
  var answerTwo = 'ャ'.obs;
  var answerFour = 'ッ'.obs;
  var answerFive = 'プ'.obs;

  void onTap1() {
    if (answerOne.value == 'キ') {
      answerOne.value = 'ギ';
    } else if (answerOne.value == 'ギ') {
      answerOne.value = 'キ';
    }
  }

  void onTap2() {
    if (answerTwo.value == 'ヤ') {
      answerTwo.value = 'ャ';
    } else if (answerTwo.value == 'ャ') {
      answerTwo.value = 'ヤ';
    }
  }

  void onTap4() {
    if (answerFour.value == 'ツ') {
      answerFour.value = 'ッ';
    } else if (answerFour.value == 'ッ') {
      answerFour.value = 'ツ';
    }
  }

  void onTap5() {
    if (answerFive.value == 'フ') {
      answerFive.value = 'ブ';
    } else if (answerFive.value == 'ブ') {
      answerFive.value = 'プ';
    } else if (answerFive.value == 'プ') {
      answerFive.value = 'フ';
    }
  }
}
