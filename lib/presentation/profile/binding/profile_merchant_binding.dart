import 'package:coordinator/domain/user/get_user_merchant_usecase.dart';
import 'package:coordinator/presentation/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileMerchantBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController(userMerchantUsecase: GetUserMerchantUsecase()));
  }
}
