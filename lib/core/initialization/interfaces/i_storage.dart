abstract interface class IStorage {
  Future<void> setString(String key, String value);
  String? getString(String key);
  Future<void> clear();
}
