import 'package:coordinator/coordinator.dart';
import 'package:coordinator/domain/user/user.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  ProfileController({required this.profile, required this.coordinator});
  
  final User profile;
  final Coordinator coordinator;

  final isLoading = false.obs;


  Future<void> onTapButton () async {
    isLoading(true);
    if (profile.role == "agent"){
      // navigasi masih hardcode
      await coordinator.move("pengajuan");
    }
    if (profile.role == "merchant") {
      // navigasi masih hardcode
      await coordinator.move("kredit");
    }
    isLoading(false);
  }
}