#import "AppleHealthPlugin.h"
#if __has_include(<apple_health/apple_health-Swift.h>)
#import <apple_health/apple_health-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "apple_health-Swift.h"
#endif

@implementation AppleHealthPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAppleHealthPlugin registerWithRegistrar:registrar];
}
@end
