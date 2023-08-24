import 'package:coordinator/presentation/profile/common/base_profile_controller.dart';
import 'package:coordinator/presentation/profile/common/base_profile_screen.dart';
import 'package:coordinator/presentation/profile/merchant/profile_merchant_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileMerchantScreen extends GetView<BaseProfileController> with BaseProfileScreen{
  ProfileMerchantScreen({super.key});
  
  @override
  ProfileMerchantController controller = Get.find<ProfileMerchantController>();

 @override
  Widget body() {
    return Column(
      children: [
        _biodataWidget(),
        _kreditButton()
      ],
    );
  }

  Widget _kreditButton() {
  return ElevatedButton(
      onPressed: (){controller.onTapButton();}, 
      child: Text("Kredit"),
    );
  }

  Widget _biodataWidget() =>
  SizedBox(
    child: Column(
      children: [
        Row(
          children: [const Text("Nama: "), Text(controller.profile.name)],
        ),
        Row(
          children: [const Text("Ktp: "), Text(controller.profile.ktp)],
        ),
        Row(
          children: [const Text("nomor hp: "), Text(controller.profile.noHp)],
        ),
      ],
    ),
  );

}
