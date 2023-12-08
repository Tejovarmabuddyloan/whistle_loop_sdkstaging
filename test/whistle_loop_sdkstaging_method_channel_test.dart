import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:whistle_loop_sdkstaging/whistle_loop_sdkstaging_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelWhistleLoopSdkstaging platform = MethodChannelWhistleLoopSdkstaging();
  const MethodChannel channel = MethodChannel('whistle_loop_sdkstaging');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
