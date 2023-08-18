import 'package:coordinator/domain/user/get_user_agent_usecase.dart';
import 'package:coordinator/presentation/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileAgentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController(userAgentUsecase: GetUserAgentUsecase()));
  }
}
