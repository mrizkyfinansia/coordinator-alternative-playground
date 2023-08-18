import 'package:coordinator/presentation/pengajuan/pengajuan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PengajuanView extends GetView<PengajuanController> {
  const PengajuanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(controller.dataPengajuan),
      ),
    );
  }
}