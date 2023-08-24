import 'package:coordinator/domain/auth/logout_usecase.dart';
import 'package:coordinator/domain/user/get_user_agent_usecase.dart';
import 'package:coordinator/presentation/profile/common/base_profile_controller.dart';

class ProfileAgentController extends BaseProfileController {
  ProfileAgentController({
    required LogoutUsecase logoutUsecase,
    required this.getUserAgentUsecase,
  })
  : super(logoutUsecase);

  final GetUserAgentUsecase getUserAgentUsecase;

  @override
  void onInit() async {
    isloading(true);
    profile = await getUserAgentUsecase(userId: "AGET123");
    isloading(false);
    super.onInit();
  }

  @override
  void onTapButton(){
    print("agent");
    return super.onTapButton();
  }
}