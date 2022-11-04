import 'dart:convert';

import 'package:client/src/services/local_cache_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: LocalCacheService)
class LocalCacheServiceImpl extends LocalCacheService {
  @override
  Future<bool> saveMap(String key, Map<String, dynamic> data) async {
    final sharedPref = await SharedPreferences.getInstance();
    final jsonData = json.encode(data);
    return sharedPref.setString(key, jsonData);
  }

  @override
  Future<Map<String, dynamic>?> getMap(String key) async {
    final sharedPref = await SharedPreferences.getInstance();
    final jsonData = sharedPref.getString(key);
    if (jsonData == null) {
      return null;
    } else {
      return json.decode(jsonData);
    }
  }
}
