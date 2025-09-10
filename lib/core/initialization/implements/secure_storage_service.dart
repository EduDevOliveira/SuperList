import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:supertodolist/core/initialization/interfaces/i_secure_storage.dart';

class SecureStorageService implements ISecureStorage {
  static late final FlutterSecureStorage _storage;

  SecureStorageService._private();

  static final SecureStorageService _instance = SecureStorageService._private();
  static SecureStorageService get instance => _instance;

  static Future<void> init() async {
    _storage = FlutterSecureStorage();
  }

  // Chaves usadas para armazenar dados
  static const String _tokenKey = 'auth_token';

  @override
  Future<void> saveToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  @override
  Future<String?> getToken() async {
    return await _storage.read(key: _tokenKey);
  }

  @override
  Future<void> deleteToken() async {
    await _storage.delete(key: _tokenKey);
  }

  @override
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}
