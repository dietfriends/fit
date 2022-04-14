//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <google_fit/google_fit_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) google_fit_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "GoogleFitPlugin");
  google_fit_plugin_register_with_registrar(google_fit_registrar);
}
