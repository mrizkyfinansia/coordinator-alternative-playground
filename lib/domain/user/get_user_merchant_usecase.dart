import 'package:coordinator/domain/auth/auth_user.dart';
import 'package:coordinator/domain/user/user.dart';
import 'package:coordinator/domain/user/user_merchant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetUserMerchantUsecase {
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
      final userMerchant = UserMerchant(role: "merchant", name: "user merchant", ktp: "0011", noHp: "08727272");
      user = User(role: userMerchant.role, name: userMerchant.name, ktp: userMerchant.ktp, noHp: userMerchant.noHp);
    }

    return user;
  }
}