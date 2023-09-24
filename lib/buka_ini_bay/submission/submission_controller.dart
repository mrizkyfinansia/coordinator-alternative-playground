import 'package:coordinator/buka_ini_bay/data_container_controller.dart';
import 'package:get/get.dart';

class SubmissionController extends GetxController {
  final dataContainer = Get.find<DataContainerController>();

  void submitData(){
    dataContainer.setDataForm("coba isi dari submission");
    Get.toNamed("/data-consumer");
  }
}