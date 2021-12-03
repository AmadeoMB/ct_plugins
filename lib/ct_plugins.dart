
import 'dart:async';
import 'package:flutter/services.dart';

export 'package:get/get.dart' hide FormData, MultipartFile, Response;
export 'package:get_storage/get_storage.dart';
export 'package:shimmer/shimmer.dart';
export 'package:dio/dio.dart';
export 'package:flutter_local_notifications/flutter_local_notifications.dart';
export 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
export 'package:flutter_typeahead/flutter_typeahead.dart';
export 'package:flutter_html/flutter_html.dart' hide OnTap;
export 'package:fluttertoast/fluttertoast.dart';
export 'package:email_validator/email_validator.dart';
export 'package:firebase_core/firebase_core.dart';
export 'package:firebase_auth/firebase_auth.dart';
export 'package:firebase_messaging/firebase_messaging.dart';
export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:cached_network_image/cached_network_image.dart';
export 'package:camera/camera.dart';
export 'package:image_picker/image_picker.dart';
export 'package:lottie/lottie.dart';
export 'package:line_icons/line_icon.dart';
export 'package:line_icons/line_icons.dart';


class CtPlugins {
  static const MethodChannel _channel = MethodChannel('ct_plugins');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
