import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'whistle_loop_sdkstaging_platform_interface.dart';

/// An implementation of [WhistleLoopSdkstagingPlatform] that uses method channels.
class MethodChannelWhistleLoopSdkstaging extends WhistleLoopSdkstagingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('whistle_loop_sdkstaging');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
