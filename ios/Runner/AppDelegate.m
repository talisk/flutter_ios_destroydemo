#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "MainViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    MainViewController *mainVC = [[MainViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:mainVC];
    
    self.engine = [[FlutterEngine alloc] initWithName:@"io.flutter.engine" project:nil allowHeadlessExecution:NO];
    [self.engine runWithEntrypoint:nil];
    [GeneratedPluginRegistrant registerWithRegistry:self.engine];
    
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

@end
