import 'package:coordinator/domain/auth/logout_usecase.dart';
import 'package:coordinator/domain/user/get_user_merchant_usecase.dart';
import 'package:coordinator/presentation/profile/merchant/profile_merchant_controller.dart';
import 'package:get/get.dart';

class ProfileMerchantBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileMerchantController(
      logoutUsecase: LogoutUsecase(),
      getUserMerchantUsecase: GetUserMerchantUsecase(),
    ));
  }
}
