import 'package:coordinator/coordinator.dart';
import 'package:coordinator/presentation/kredit/kredit_controller.dart';
import 'package:get/get.dart';

class KreditCoordinator implements Coordinator{
  @override
  Future<void> start() async {
    // call api
    await Future.delayed(const Duration(seconds: 2));
    const datakredit = "data kredit merchant";
    Get.lazyPut(() => KreditController(datakredit, this));
  }
  
  @override
  Future<void> move(String to) async {
  }
  
  @override
  Future<void> end() {
    // TODO: implement end
    throw UnimplementedError();
  }
}