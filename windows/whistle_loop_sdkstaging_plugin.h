#ifndef FLUTTER_PLUGIN_WHISTLE_LOOP_SDKSTAGING_PLUGIN_H_
#define FLUTTER_PLUGIN_WHISTLE_LOOP_SDKSTAGING_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace whistle_loop_sdkstaging {

class WhistleLoopSdkstagingPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  WhistleLoopSdkstagingPlugin();

  virtual ~WhistleLoopSdkstagingPlugin();

  // Disallow copy and assign.
  WhistleLoopSdkstagingPlugin(const WhistleLoopSdkstagingPlugin&) = delete;
  WhistleLoopSdkstagingPlugin& operator=(const WhistleLoopSdkstagingPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace whistle_loop_sdkstaging

#endif  // FLUTTER_PLUGIN_WHISTLE_LOOP_SDKSTAGING_PLUGIN_H_
