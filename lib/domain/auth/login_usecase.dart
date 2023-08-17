import 'package:coordinator/domain/auth/auth_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginUsecase {
  // Do login, store user in local datasource for profile screen purpose
  Future<AuthUser> call({required String role}) async {
    final authUser = AuthUser(role: role, name: "tes", ktp: "tes ktp", email: "tes email", noHp: role == "merchant" ? "tes hp" : "-");

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_user', authUser.toRawJson());
    
    return authUser;
  }
}