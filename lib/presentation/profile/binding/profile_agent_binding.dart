import 'package:coordinator/domain/user/get_user_agent_usecase.dart';
import 'package:coordinator/domain/user/user.dart';
import 'package:coordinator/presentation/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileAgentBinding implements Bindings {
  @override
  Future<void> dependencies() async {

    await Get.putAsync<User>(() async {
      return await GetUserAgentUsecase().call(userId: "agent");
    });

    Get.lazyPut(() => ProfileController(profile: Get.find()));
  }
}
