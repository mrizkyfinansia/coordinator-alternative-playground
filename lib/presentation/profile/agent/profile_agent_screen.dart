import 'package:coordinator/presentation/profile/agent/profile_agent_controller.dart';
import 'package:coordinator/presentation/profile/common/base_profile_controller.dart';
import 'package:coordinator/presentation/profile/common/base_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileAgentScreen extends GetView<BaseProfileController> with BaseProfileScreen {
  ProfileAgentScreen({super.key});

  @override
  ProfileAgentController controller = Get.find<ProfileAgentController>();

  @override
  Widget body() {
    return Column(
      children: [
        _biodataWidget(), 
        _pengajuanButton(),
      ],
    );
  }

  Widget _pengajuanButton() {
    return ElevatedButton(
      onPressed: () {
        controller.onTapButton();
      },
      child: Text("Pengajuan"),
    );
  }

  Widget _biodataWidget() => Obx(() => controller.isloading.isFalse
    ? SizedBox(
        child: Column(
          children: [
            Row(
              children: [const Text("Nama: "), Text(controller.profile.name)],
            ),
            Row(
              children: [const Text("Ktp: "), Text(controller.profile.ktp)],
            ),
            Row(
              children: [const Text("email: "), Text(controller.profile.email)],
            ),
          ],
        ),
      )
    : const SizedBox(),
  );
}
