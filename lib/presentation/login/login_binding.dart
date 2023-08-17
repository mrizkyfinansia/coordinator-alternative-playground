import 'package:coordinator/presentation/login/login_controller.dart';
import 'package:get/get.dart';

class Loginbinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
