import 'package:coordinator/presentation/profile/common/base_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin BaseProfileScreen on GetView<BaseProfileController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.isloading.value
            ? Text("Loading")
            : Column(
                children: [
                  header(),
                  body(),
                  logoutButton(),
                ],
              ),
      ),
    );
  }

  Widget header() {
    return Text("Profile");
  }

  Widget body();

  Widget logoutButton() {
    return ElevatedButton(
      onPressed: (){controller.onTapLogout();},
      child: Text("Logout"),
    );
  }
}
