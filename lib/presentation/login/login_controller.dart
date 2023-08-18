import 'package:coordinator/coordinator.dart';
import 'package:coordinator/domain/auth/login_usecase.dart';
import 'package:coordinator/presentation/login/login_coordinator.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final Coordinator logincoor = LoginCoordinator();

  final isLoading = false.obs;

  void loginMerchant() async {
    isLoading(true);
    await LoginUsecase().call(role: "merchant");
    await logincoor.move("merchant");
    isLoading(false);
  }

  void loginAgent() async {
    isLoading(true);
    await LoginUsecase().call(role: "agent");
    await logincoor.move("agent");
    isLoading(false);
  }
}