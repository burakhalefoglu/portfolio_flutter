import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/storage_item.dart';


class SecureLocalStorageService {

  SecureLocalStorageService.internal();

  static final SecureLocalStorageService _singleton =
  SecureLocalStorageService.internal();

  factory SecureLocalStorageService() {
    return _singleton;
  }

  static const _secureStorage = FlutterSecureStorage();

  static AndroidOptions _getAndroidOptions() => const AndroidOptions(
    encryptedSharedPreferences: true,
  );

  static Future<void> writeSecureData(StorageItem newItem) async {
    await _secureStorage.write(
        key: newItem.key, value: newItem.value, aOptions: _getAndroidOptions());
  }

  static Future<String?> readSecureData(String key) async {
    var readData =
    await _secureStorage.read(key: key, aOptions: _getAndroidOptions());
    return readData ?? "";
  }

  static Future<void> deleteSecureData(StorageItem item) async {
    await _secureStorage.delete(key: item.key, aOptions: _getAndroidOptions());
  }

  static Future<bool> containsKeyInSecureData(String key) async {
    var containsKey = await _secureStorage.containsKey(key: key, aOptions: _getAndroidOptions());
    return containsKey;
  }

  static Future<List<StorageItem>> readAllSecureData() async {
    var allData = await _secureStorage.readAll(aOptions: _getAndroidOptions());
    List<StorageItem> list =
    allData.entries.map((e) => StorageItem.withData(e.key, e.value)).toList();
    return list;
  }

  static Future<void> deleteAllSecureData() async {
    await _secureStorage.deleteAll(aOptions: _getAndroidOptions());
  }

}