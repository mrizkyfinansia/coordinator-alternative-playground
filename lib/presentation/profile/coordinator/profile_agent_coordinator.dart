import 'package:coordinator/coordinator.dart';
import 'package:coordinator/presentation/pengajuan/pengajuan_coordinator.dart';
import 'package:coordinator/presentation/profile/profile_controller.dart';
import 'package:get/get.dart';

import '../../../domain/user/get_user_agent_usecase.dart';

class ProfileAgentCoordinator implements Coordinator{

  @override
  Future<void> start () async {
    final user = await GetUserAgentUsecase().call(userId: "agent");
    await Future.delayed(const Duration(seconds: 2));

    Get.lazyPut(() => ProfileController(profile: user, coordinator: this));
  }

  @override
  Future<void> move(String to) async {

    switch (to) {
      case "pengajuan":
        await PerngajuanCoordinator().start();
        Get.toNamed("pengajuan");
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