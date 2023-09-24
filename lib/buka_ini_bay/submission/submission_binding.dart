import 'package:coordinator/buka_ini_bay/data_container_controller.dart';
import 'package:coordinator/buka_ini_bay/submission/submission_controller.dart';
import 'package:get/get.dart';

class SubmissionBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<DataContainerController>(() => DataContainerController());
  Get.lazyPut<SubmissionController>(() => SubmissionController());
  }
}