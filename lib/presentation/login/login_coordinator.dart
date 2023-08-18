import 'package:coordinator/coordinator.dart';
import 'package:coordinator/presentation/profile/coordinator/profile_agent_coordinator.dart';
import 'package:coordinator/presentation/profile/coordinator/profile_merchant_coordinator.dart';
import 'package:get/get.dart';

class LoginCoordinator implements Coordinator{
  
  @override
  Future<void> move (String to) async {

    switch (to) {
      case "agent":
        await ProfileAgentCoordinator().start();
        Get.toNamed("profile");
        break;
      case "merchant":
        await ProfileMerchantCoordinator().start();
        Get.toNamed("profile");
        break;
      default:
    }
  }
  
  @override
  Future<void> start() async {
  }
  
  @override
  Future<void> end() {
    // TODO: implement end
    throw UnimplementedError();
  }
}