import 'package:coordinator/domain/auth/logout_usecase.dart';
import 'package:coordinator/domain/user/get_user_agent_usecase.dart';
import 'package:coordinator/presentation/profile/agent/profile_agent_controller.dart';
import 'package:get/get.dart';

class ProfileAgentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileAgentController(
      logoutUsecase: LogoutUsecase(),
      getUserAgentUsecase: GetUserAgentUsecase(),
    ));
  }
}
