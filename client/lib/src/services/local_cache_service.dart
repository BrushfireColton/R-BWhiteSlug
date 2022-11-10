abstract class LocalCacheService {
  static const String tokenKey = 'token';

  Future<bool> saveMap(String key, Map<String, dynamic> data);
  Future<Map<String, dynamic>?> getMap(String key);
  Future<bool> remove(String key);
}
