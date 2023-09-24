import 'package:get/get.dart';

class DataContainerController extends GetxController {
  final dataForm = "".obs;

  void setDataForm(String value){
    dataForm.value = value;
  }
}