import 'package:coordinator/domain/auth/auth_user.dart';
import 'package:coordinator/domain/user/user.dart';
import 'package:coordinator/domain/user/user_agent.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetUserAgentUsecase {
  // Get User data whether from api or local datasource stored at login before
  Future<User> call({required String userId}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final authUserPreference = prefs.getString('auth_user');

    final User user;

    if (authUserPreference != null){
      // local datasource
      final authUser = AuthUser.fromRawJson(authUserPreference);
      user = User(role: authUser.role, name: authUser.name, ktp: authUser.ktp, email: authUser.email, noHp: authUser.noHp);
    } else {
      // call api
      final userAgent = UserAgent(role: "merchant", name: "user merchant", ktp: "0011", email: "mail@mail.com");
      user = User(role: userAgent.role, name: userAgent.name, ktp: userAgent.ktp, email: userAgent.email);
    }

    return user;
  }
}