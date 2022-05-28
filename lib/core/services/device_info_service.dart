import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

class DeviceInfoService {

  DeviceInfoService.internal();

  static final DeviceInfoService _singleton =
  DeviceInfoService.internal();

  factory DeviceInfoService() {
    return _singleton;
  }

  static Future<void> addOrUpdateDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    if(kIsWeb){
      WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
      print('Running on ${webBrowserInfo.userAgent}');
    }
    else if (Platform.isAndroid) {
      AndroidDeviceInfo info = await deviceInfo.androidInfo;
      print(info.toMap());
    } else if (Platform.isIOS) {
      IosDeviceInfo info = await deviceInfo.iosInfo;
      print(info.toMap());
    } else if (Platform.isLinux) {
      LinuxDeviceInfo info = await deviceInfo.linuxInfo;
      print(info.toMap());
    } else if (Platform.isMacOS) {
      MacOsDeviceInfo info = await deviceInfo.macOsInfo;
      print(info.toMap());
    } else if (Platform.isWindows) {
      WindowsDeviceInfo info = await deviceInfo.windowsInfo;
      print(info.toMap());
    }
  }

}