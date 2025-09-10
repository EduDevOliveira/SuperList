import 'package:shared_preferences/shared_preferences.dart';
import 'package:supertodolist/core/initialization/interfaces/i_storage.dart';

class SharedPreferencesService implements IStorage {
  static late final SharedPreferences _prefs;

  SharedPreferencesService._private();

  static final SharedPreferencesService _instance = SharedPreferencesService._private();
  static SharedPreferencesService get instance => _instance;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  @override
  String? getString(String key) {
    return _prefs.getString(key);
  }

  @override
  Future<void> clear() async {
    await _prefs.clear();
  }
}
