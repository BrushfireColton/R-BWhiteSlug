abstract class LocalCacheService {
  Future<bool> saveMap(String key, Map<String, dynamic> data);
  Future<Map<String, dynamic>?> getMap(String key);
  Future<bool> remove(String key);
}
