import 'package:get/get.dart';
import 'package:pokemon_quiz_app/constant/pokemon_list.dart';
import 'dart:math' as math;

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

  var counts = 0;

  @override
  void onInit() {
    super.onInit();
    getPokemon();
  }

  void getPokemon() {
    var rand = math.Random();
    var index = rand.nextInt(152);
    var pokemon = PokemonList[index];
    print(pokemon);
    one.value = pokemon[0];
    two.value = pokemon[1];
    three.value = pokemon[2];
    four.value = pokemon[3];
    five.value = pokemon[4];
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
      default:
        break;
    }
  }
}
