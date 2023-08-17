import 'package:coordinator/domain/user/user.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfileController extends GetxController {
  final User profile;

  ProfileController({required this.profile});
}