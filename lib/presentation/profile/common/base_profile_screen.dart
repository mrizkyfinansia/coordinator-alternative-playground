import 'package:coordinator/presentation/profile/common/base_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin BaseProfileScreen on GetView<BaseProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              header(),
              body(),
              logoutButton(),
            ],
          ),
          loadingWidget(),
        ],
      )
    );
  }

  Widget loadingWidget() {
    return Obx(() {
      return controller.isloading.isTrue
        ? const CircularProgressIndicator()
        : const SizedBox();
    });
  }

  Widget header() {
    return const Text("Profile");
  }

  Widget body();

  Widget logoutButton() {
    return ElevatedButton(
      onPressed: (){controller.onTapLogout();},
      child: const Text("Logout"),
    );
  }
}
