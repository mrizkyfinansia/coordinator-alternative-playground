import 'package:coordinator/domain/user/get_user_merchant_usecase.dart';
import 'package:coordinator/domain/user/user.dart';
import 'package:coordinator/presentation/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileMerchantBinding implements Bindings {
  @override
  void dependencies() async {
    await Get.putAsync<User>(() async {
      return await GetUserMerchantUsecase().call(userId: "agent");
    });

    Get.lazyPut(() => ProfileController(profile: Get.find()));
  }
}
