import 'package:coordinator/domain/auth/logout_usecase.dart';
import 'package:coordinator/domain/user/get_user_merchant_usecase.dart';
import 'package:coordinator/presentation/profile/common/base_profile_controller.dart';

class ProfileMerchantController extends BaseProfileController {
  ProfileMerchantController({
    required LogoutUsecase logoutUsecase,
    required this.getUserMerchantUsecase,
  })
  : super(logoutUsecase);

  final GetUserMerchantUsecase getUserMerchantUsecase;

  @override
  void onInit() async {
    isloading(true);
    await Future.delayed(const Duration(seconds: 1));
    profile = await getUserMerchantUsecase(userId: "MERCHANT123");
    isloading(false);
    super.onInit();
  }

  @override
  void onTapButton() {
    print("Profile merchant button tapped");
    return super.onTapButton();
  }
}