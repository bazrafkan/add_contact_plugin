import 'dart:async';

import 'package:flutter/services.dart';

class AddContactPlugin {
  static const MethodChannel _channel =
      const MethodChannel('add_contact_plugin');

  static Future<void> get addContact async {
    // final String version = await _channel.invokeMethod('getPlatformVersion');
    await _channel.invokeMethod('insertContact');
    return;
  }
}
