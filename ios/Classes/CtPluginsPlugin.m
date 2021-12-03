#import "CtPluginsPlugin.h"
#if __has_include(<ct_plugins/ct_plugins-Swift.h>)
#import <ct_plugins/ct_plugins-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ct_plugins-Swift.h"
#endif

@implementation CtPluginsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCtPluginsPlugin registerWithRegistrar:registrar];
}
@end
