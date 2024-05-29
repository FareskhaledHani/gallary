import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;
  static const String _tokenKey = 'token';
  static const String _name = 'name';

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();

  }


  static String getToken() {
    return _prefs.getString(_tokenKey) ?? "";
  }

  static Future<void> setToken(String token) async {
    await init();
    await _prefs.setString(_tokenKey, token);
  }

  static Future removeLoginData() async {
    await _prefs.clear();
  }



  /////name
  static String getName() {
    return _prefs.getString(_name) ?? "";
  }

  static Future<void> setName(String name) async {
    await init();
    await _prefs.setString(_name, name);
  }

}
