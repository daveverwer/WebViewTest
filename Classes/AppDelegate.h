@interface AppDelegate : NSObject <UIApplicationDelegate>
{
  UIWindow *_window;
  UIViewController *_viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIViewController *viewController;

@end
