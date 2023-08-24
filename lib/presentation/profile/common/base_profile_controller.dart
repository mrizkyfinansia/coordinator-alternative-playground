import 'package:coordinator/domain/auth/logout_usecase.dart';
import 'package:coordinator/domain/user/user.dart';
import 'package:get/get.dart';

class BaseProfileController extends GetxController {
  BaseProfileController(this.logoutUsecase);

  final LogoutUsecase logoutUsecase;
  late User profile;

  final isloading = false.obs;


  Future<void> onTapLogout() async {
    isloading(true);
    await Future.delayed(Duration(seconds: 1));
    await logoutUsecase();
    Get.offAllNamed("/login");
    isloading(false);
  }

  void onTapButton(){}

}