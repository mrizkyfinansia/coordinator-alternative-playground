import 'package:coordinator/presentation/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        body: controller.isLoading.value
        ? Center(child: Text("Loading"))
        : Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.loginAgent();
                  },
                  child: Text("agent")
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.loginMerchant();
                  },
                  child: Text("merchant")
                ),
              ],
            ),
          )
      )
    );
  }
}
