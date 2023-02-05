import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:get/get.dart';

abstract class LanguageController extends GetxController {
  goToLogin();
}

class LanguageControllerImp extends LanguageController {
  MyServices myServices = Get.find();

  @override
  goToLogin() {
    myServices.sharedPreferences.setString("step", "1");
    Get.offNamed(AppRoute.login);
  }
}