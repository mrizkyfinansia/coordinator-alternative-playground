import 'package:coordinator/buka_ini_bay/data_consumer/data_consumer_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class DataConsumer extends GetView<DataConsumerController> {
  const DataConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text(controller.dataContainer.dataForm.value)),
      ),
    );
  }
}