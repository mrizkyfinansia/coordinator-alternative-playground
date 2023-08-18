import 'package:coordinator/presentation/kredit/kredit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KreditView extends GetView<KreditController> {
  const KreditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(controller.dataKredit),
      ),
    );
  }
}