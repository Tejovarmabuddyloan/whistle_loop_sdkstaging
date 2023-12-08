import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'whistle_loop_sdkstaging_method_channel.dart';

abstract class WhistleLoopSdkstagingPlatform extends PlatformInterface {
  /// Constructs a WhistleLoopSdkstagingPlatform.
  WhistleLoopSdkstagingPlatform() : super(token: _token);

  static final Object _token = Object();

  static WhistleLoopSdkstagingPlatform _instance = MethodChannelWhistleLoopSdkstaging();

  /// The default instance of [WhistleLoopSdkstagingPlatform] to use.
  ///
  /// Defaults to [MethodChannelWhistleLoopSdkstaging].
  static WhistleLoopSdkstagingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WhistleLoopSdkstagingPlatform] when
  /// they register themselves.
  static set instance(WhistleLoopSdkstagingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
