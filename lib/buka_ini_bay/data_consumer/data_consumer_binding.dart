import 'package:coordinator/buka_ini_bay/data_consumer/data_consumer_controller.dart';
import 'package:get/get.dart';

class DataConsumerBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<DataConsumerController>(() => DataConsumerController());
  }
}