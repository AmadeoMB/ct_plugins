import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ct_plugins/ct_plugins.dart';

void main() {
  const MethodChannel channel = MethodChannel('ct_plugins');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await CtPlugins.platformVersion, '42');
  });
}
