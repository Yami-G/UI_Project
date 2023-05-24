import 'dart:convert';

import 'package:amit_course/Models/login_model.dart';
import 'package:amit_course/Shared/Resources/storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum DataType { string, int, double, bool, stringList }

class SharedStorage {
  static late SharedPreferences _localStorage;

  static Future getInstance() async {
    _localStorage = await SharedPreferences.getInstance();
  }

  Future<bool> setDataInLocalStorage({
    required DataType dataType,
    required String key,
    required dynamic value,
  }) async {
    return await _tryCatchWrapper(
      () async {
        return await setData(dataType: dataType, key: key, value: value);
      },
    );
  }

  Future<bool> getDataFromLocalStorage({
    required DataType dataType,
    required String key,
  }) async {
    return await _tryCatchWrapper(
      () async {
        return await getData(dataType: dataType, key: key);
      },
    );
  }

  setData({
    required DataType dataType,
    required String key,
    required dynamic value,
  }) async {
    switch (dataType) {
      case DataType.string:
        return await _localStorage.setString(key, value);
      case DataType.int:
        return await _localStorage.setInt(key, value);
      case DataType.double:
        return await _localStorage.setDouble(key, value);
      case DataType.bool:
        return await _localStorage.setBool(key, value);
      case DataType.stringList:
        return await _localStorage.setStringList(key, value);
    }
  }

  getData({
    required DataType dataType,
    required String key,
  }) {
    switch (dataType) {
      case DataType.string:
        return _localStorage.getString(key);
      case DataType.int:
        return _localStorage.getInt(key);
      case DataType.double:
        return _localStorage.getDouble(key);
      case DataType.bool:
        return _localStorage.getBool(key);
      case DataType.stringList:
        return _localStorage.getStringList(key);
    }
  }

  removeDataFromLocalStorage({required String key}) async {
    return await _tryCatchWrapper(
      () async {
        return await _localStorage.remove(key);
      },
    );
  }

  clearAllDataInLocalStorage() async {
    return await _tryCatchWrapper(
      () async {
        return await _localStorage.clear();
      },
    );
  }

  Future<LoginUser?> getUserData({required String key}) async {
    return await _tryCatchWrapper(
      () async {
        final String? userData = await getData(dataType: DataType.string, key: key);
        if (userData != null) {
          final Map<String, dynamic>? json = jsonDecode(userData);
          return LoginUser.fromJson(json!);
        } else {
          return null;
        }
      },
    );
  }

  Future<LoginUser?> setUserData({
    required LoginUser loginUser,
  }) async {
    return await _tryCatchWrapper(
      () async {
        Map<String, dynamic> x = LoginUser.toMap(phone: loginUser.phone, password: loginUser.password);
        String userData = jsonEncode(x);
        await setData(dataType: DataType.string, key: StorageKeys.userData, value: userData);
      },
    );
  }

  Future<T> _tryCatchWrapper<T>(Function body) async {
    try {
      return await body();
    } on Exception catch (e) {
      throw e.toString();
    }
  }
}
