import 'package:coordinator/presentation/login/login_binding.dart';
import 'package:coordinator/presentation/login/login_view.dart';
import 'package:coordinator/presentation/profile/agent/profile_agent_screen.dart';
import 'package:coordinator/presentation/profile/merchant/profile_merchant_screen.dart';
import 'package:get/get.dart';

import 'presentation/profile/agent/profile_agent_binding.dart';
import 'presentation/profile/merchant/profile_merchant_binding.dart';

class Apppages {
  Apppages._();

  static final routes = [
    GetPage(
      name: "/profile-merchant",
      page: () => ProfileMerchantScreen(),
      binding: ProfileMerchantBinding(),
    ),
    GetPage(
      name: "/profile-agent",
      page: () => ProfileAgentScreen(),
      binding: ProfileAgentBinding(),
    ),
    GetPage(
      name: "/login",
      page: () => const LoginView(),
      binding: Loginbinding(),
    ),
  ];
}