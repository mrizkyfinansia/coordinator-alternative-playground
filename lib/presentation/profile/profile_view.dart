import 'package:coordinator/presentation/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        body: controller.isloading.value
        ? SizedBox()
        : Column(
            children: [
              header(),
              body(),
            ],
          ),
      )
    );
  }

  Stack header() {
    return Stack(
      children: [
        _agentProfileTitleWidget(
            setVisible: controller.profile.role == "agent"),
        _merchantProfileTitleWidget(
            setVisible: controller.profile.role == "merchant")
      ],
    );
  }

  Widget body() {
    return Stack(
      children: [
        _agentBiodataWidget(setVisible: controller.profile.role == "agent"),
        _merchantBiodataWidget(
            setVisible: controller.profile.role == "merchant"),
      ],
    );
  }

  Widget _merchantProfileTitleWidget({required bool setVisible}) {
    return setVisible ? const Text("Profile Merchant") : const SizedBox();
  }

  Widget _agentProfileTitleWidget({required bool setVisible}) {
    return setVisible ? const Text("Profile Agent") : const SizedBox();
  }

  Widget _agentBiodataWidget({required bool setVisible}) {
    return setVisible
        ? SizedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    const Text("Nama: "),
                    Text(controller.profile.name)
                  ],
                ),
                Row(
                  children: [const Text("Ktp: "), Text(controller.profile.ktp)],
                ),
                Row(
                  children: [
                    const Text("email: "),
                    Text(controller.profile.email)
                  ],
                )
              ],
            ),
          )
        : const SizedBox();
  }

  Widget _merchantBiodataWidget({required bool setVisible}) {
    return setVisible
        ? SizedBox(
            child: Column(
              children: [
                Row(
                  children: [const Text("Nama"), Text(controller.profile.name)],
                ),
                Row(
                  children: [const Text("Ktp"), Text(controller.profile.ktp)],
                ),
                Row(
                  children: [
                    const Text("nomor hp"),
                    Text(controller.profile.noHp)
                  ],
                ),
                Row(
                  children: [
                    const Text("email"),
                    Text(controller.profile.email)
                  ],
                )
              ],
            ),
          )
        : const SizedBox();
  }
}
