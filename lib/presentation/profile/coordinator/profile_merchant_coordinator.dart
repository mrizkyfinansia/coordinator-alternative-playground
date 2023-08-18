
import 'package:coordinator/coordinator.dart';
import 'package:coordinator/domain/user/get_user_merchant_usecase.dart';
import 'package:coordinator/presentation/kredit/kredit_coordinator.dart';
import 'package:coordinator/presentation/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileMerchantCoordinator implements Coordinator {
  @override
  Future<void> start () async {
    final user = await GetUserMerchantUsecase().call(userId: "agent");
    await Future.delayed(const Duration(seconds: 2));

    Get.lazyPut(() => ProfileController(profile: user, coordinator: this));
  }

  @override
  Future<void> move(String to) async {

    switch (to) {
      case "kredit":
        await KreditCoordinator().start();
        Get.toNamed("kredit");
        break;
      default:
    }
  }
  
  @override
  Future<void> end() {
    // TODO: implement end
    throw UnimplementedError();
  }
  
}