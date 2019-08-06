import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceUtils {
  static setBarStatus(bool isDarkIcon,
      {Color color: Colors.transparent}) async {
    if (Platform.isAndroid) {
      if (isDarkIcon) {
        SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
            statusBarColor: color, statusBarIconBrightness: Brightness.dark);
        SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
      } else {
        SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
            statusBarColor: color, statusBarIconBrightness: Brightness.light);
        SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
      }
    } else if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(
          isDarkIcon ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark);
    }
  }
}