#import "FitPlugin.h"
#import "messages.h"

#if __has_include(<fit/fit-Swift.h>)
#import <fit/fit-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fit-Swift.h"
#endif

@implementation FitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    [FitPlugin registerWithRegistrar:registrar];
}
@end
