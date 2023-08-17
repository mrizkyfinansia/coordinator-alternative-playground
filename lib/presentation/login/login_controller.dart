import 'package:coordinator/domain/auth/login_usecase.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  void loginMerchant(){
    LoginUsecase().call(role: "merchant");
    Get.toNamed("profile-merchant");
  }

  void loginAgent(){
    LoginUsecase().call(role: "agent");
    Get.toNamed("profile-agent");
  }
}