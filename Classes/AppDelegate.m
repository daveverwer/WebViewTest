#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

#pragma mark Application lifecycle
- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // Show the root view controller
  [self.window addSubview:self.viewController.view];
  [self.window makeKeyAndVisible];

  return YES;
}

#pragma mark Memory management
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
  NSLog(@"Memory warning: %@", [self class]);
}

- (void)dealloc
{
  self.viewController = nil;
  self.window = nil;
  [super dealloc];
}

@end
