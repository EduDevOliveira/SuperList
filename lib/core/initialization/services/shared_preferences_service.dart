import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static late final SharedPreferences _prefs;

  SharedPreferencesService._private();

  static final SharedPreferencesService _instance = SharedPreferencesService._private();
  static SharedPreferencesService get instance => _instance;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> setString(String key, String value) async => await _prefs.setString(key, value);
  String? getString(String key) => _prefs.getString(key);

  Future<void> clear() async => await _prefs.clear();
}
