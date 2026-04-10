import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_pref_keys.dart';
class SharedPrefHelper {
  SharedPrefHelper._();
  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> removeData({required String key}) async {
    debugPrint('SharedPrefHelper: Removing data with key: $key');
    await _sharedPreferences.remove(key);
  }

  static Future<void> clearAllData() async {
    debugPrint('SharedPrefHelper: Clearing all data');
    await _sharedPreferences.clear();
  }

  static Future<void> setData({
    required String key,
    required dynamic value,
  }) async {
    debugPrint(
      'SharedPrefHelper: Setting data with key: $key and value: $value',
    );
    if (value is String) {
      await _sharedPreferences.setString(key, value);
    } else if (value is int) {
      await _sharedPreferences.setInt(key, value);
    } else if (value is bool) {
      await _sharedPreferences.setBool(key, value);
    } else if (value is double) {
      await _sharedPreferences.setDouble(key, value);
    } else {
      throw ArgumentError('Unsupported value type: ${value.runtimeType}');
    }
  }

  static bool getBool({required String key}) {
    debugPrint('SharedPrefHelper: Retrieving bool with key: $key');
    return _sharedPreferences.getBool(key) ?? false;
  }

  static double getDouble({required String key}) {
    debugPrint('SharedPrefHelper: Retrieving double with key: $key');
    return _sharedPreferences.getDouble(key) ?? 0.0;
  }

  static int getInt({required String key}) {
    debugPrint('SharedPrefHelper: Retrieving int with key: $key');
    return _sharedPreferences.getInt(key) ?? 0;
  }

  static String getString({required String key}) {
    debugPrint('SharedPrefHelper: Retrieving string with key: $key');
    return _sharedPreferences.getString(key) ?? '';
  }
}
