
import 'dart:async';

import 'package:flutter/services.dart';

class CtPlugins {
  static const MethodChannel _channel = MethodChannel('ct_plugins');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
