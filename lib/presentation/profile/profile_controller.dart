import 'package:coordinator/domain/user/get_user_agent_usecase.dart';
import 'package:coordinator/domain/user/get_user_merchant_usecase.dart';
import 'package:coordinator/domain/user/user.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  late User profile;
  final GetUserAgentUsecase? userAgentUsecase;
  final GetUserMerchantUsecase? userMerchantUsecase;

  final isloading = false.obs;

  ProfileController({this.userMerchantUsecase, this.userAgentUsecase});

  @override
  void onInit() async {
    isloading(true);
    if (userAgentUsecase != null){
      profile = await userAgentUsecase!.call(userId: "userId");
    }

    if (userMerchantUsecase != null){
      profile = await userMerchantUsecase!.call(userId: "userId");
    }
    isloading(false);
    super.onInit();
  }
}