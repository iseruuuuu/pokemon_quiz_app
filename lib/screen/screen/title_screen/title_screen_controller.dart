import 'package:get/get.dart';
import 'package:pokemon_quiz_app/screen/screen/home_screen/home_screen.dart';

class TitleScreenController extends GetxController {
  void onTapStart() {
    Get.to(() => HomeScreen());
  }
}
