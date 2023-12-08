
import 'whistle_loop_sdkstaging_platform_interface.dart';

class WhistleLoopSdkstaging {
  Future<String?> getPlatformVersion() {
    return WhistleLoopSdkstagingPlatform.instance.getPlatformVersion();
  }
}
