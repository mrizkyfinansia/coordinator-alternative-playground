import 'package:coordinator/coordinator.dart';
import 'package:coordinator/presentation/pengajuan/pengajuan_controller.dart';
import 'package:get/get.dart';

class PerngajuanCoordinator implements Coordinator{
  @override
  Future<void> start() async {
    // call api
    await Future.delayed(const Duration(seconds: 2));
    const dataPengajuan = "data pengajuan agent";
    Get.lazyPut(() => PengajuanController(dataPengajuan, this));
  }
  
  @override
  Future<void> move(String to) async {
    return;
  }
  
  @override
  Future<void> end() {
    // TODO: implement end
    throw UnimplementedError();
  }
}