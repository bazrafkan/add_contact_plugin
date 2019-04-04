#import "AddContactPlugin.h"
#import <add_contact_plugin/add_contact_plugin-Swift.h>

@implementation AddContactPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAddContactPlugin registerWithRegistrar:registrar];
}
@end
