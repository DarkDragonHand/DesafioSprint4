import 'package:shared_preferences/shared_preferences.dart';

class TaskSimplePreferences {
  static late SharedPreferences _sharedPreferences;
  static const _keyTitle = "title";

  static Future init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future setTitleTask(String title) async {
    return await _sharedPreferences.setString(_keyTitle, title);
  }

  static String? getTitleTask() {
    return _sharedPreferences.getString(_keyTitle);
  }

  
}
