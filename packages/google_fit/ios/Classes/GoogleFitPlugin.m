#import "GoogleFitPlugin.h"
#if __has_include(<google_fit/google_fit-Swift.h>)
#import <google_fit/google_fit-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "google_fit-Swift.h"
#endif

@implementation GoogleFitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGoogleFitPlugin registerWithRegistrar:registrar];
}
@end
