import 'package:coordinator/presentation/kredit/kredit_view.dart';
import 'package:coordinator/presentation/loading.dart';
import 'package:coordinator/presentation/login/login_binding.dart';
import 'package:coordinator/presentation/login/login_view.dart';
import 'package:coordinator/presentation/pengajuan/pengajuan_view.dart';
import 'package:coordinator/presentation/profile/profile_view.dart';
import 'package:get/get.dart';

class Apppages {
  Apppages._();

  static final routes = [
    GetPage(
      name: "/profile",
      page: () => const ProfileView(),
    ),
    GetPage(
      name: "/pengajuan",
      page: () => const PengajuanView(),
    ),
    GetPage(
      name: "/kredit",
      page: () => const KreditView(),
    ),
    GetPage(
      name: "/login",
      page: () => const LoginView(),
      binding: Loginbinding()
    ),
  ];
}