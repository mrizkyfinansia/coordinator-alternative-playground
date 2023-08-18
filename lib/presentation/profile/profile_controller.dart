import 'package:coordinator/coordinator.dart';
import 'package:coordinator/domain/user/user.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final User profile;
  final Coordinator coordinator;

  final isLoading = false.obs;

  ProfileController({required this.profile, required this.coordinator});

  Future<void> onTapButton () async {
    isLoading(true);
    if (profile.role == "agent"){
      await coordinator.move("pengajuan");
    }
    if (profile.role == "merchant") {
      await coordinator.move("kredit");
    }
    isLoading(false);
  }
}