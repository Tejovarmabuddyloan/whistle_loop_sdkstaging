import 'package:flutter_test/flutter_test.dart';
import 'package:whistle_loop_sdkstaging/whistle_loop_sdkstaging.dart';
import 'package:whistle_loop_sdkstaging/whistle_loop_sdkstaging_platform_interface.dart';
import 'package:whistle_loop_sdkstaging/whistle_loop_sdkstaging_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWhistleLoopSdkstagingPlatform
    with MockPlatformInterfaceMixin
    implements WhistleLoopSdkstagingPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WhistleLoopSdkstagingPlatform initialPlatform = WhistleLoopSdkstagingPlatform.instance;

  test('$MethodChannelWhistleLoopSdkstaging is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWhistleLoopSdkstaging>());
  });

  test('getPlatformVersion', () async {
    WhistleLoopSdkstaging whistleLoopSdkstagingPlugin = WhistleLoopSdkstaging();
    MockWhistleLoopSdkstagingPlatform fakePlatform = MockWhistleLoopSdkstagingPlatform();
    WhistleLoopSdkstagingPlatform.instance = fakePlatform;

    expect(await whistleLoopSdkstagingPlugin.getPlatformVersion(), '42');
  });
}
