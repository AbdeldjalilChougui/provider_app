import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  Future<bool?> getIsLoggedIn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('isLoggedIn') ?? false;
  }

  setIsLoggedIn({bool? value}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('isLoggedIn', value!);
  }
}