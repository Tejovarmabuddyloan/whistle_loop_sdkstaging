#include "include/whistle_loop_sdkstaging/whistle_loop_sdkstaging_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "whistle_loop_sdkstaging_plugin.h"

void WhistleLoopSdkstagingPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  whistle_loop_sdkstaging::WhistleLoopSdkstagingPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
