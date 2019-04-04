import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:add_contact_plugin/add_contact_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('add_contact_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('addContact', () async {
    await AddContactPlugin.addContact;
  });
}
