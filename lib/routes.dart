import 'package:coordinator/presentation/login/login_binding.dart';
import 'package:coordinator/presentation/login/login_view.dart';
import 'package:coordinator/presentation/profile/profile_view.dart';
import 'package:get/get.dart';

import 'presentation/profile/binding/profile_agent_binding.dart';
import 'presentation/profile/binding/profile_merchant_binding.dart';

class Apppages {
  Apppages._();

  static final routes = [
    GetPage(
      name: "/profile-merchant",
      page: () => const ProfileView(),
      binding: ProfileMerchantBinding(),
    ),
    GetPage(
      name: "/profile-agent",
      page: () => const ProfileView(),
      binding: ProfileAgentBinding(),
    ),
    GetPage(
      name: "/login",
      page: () => const LoginView(),
      binding: Loginbinding(),
    ),
  ];
}