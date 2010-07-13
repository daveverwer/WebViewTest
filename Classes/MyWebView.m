#import "MyWebView.h"

@implementation MyWebView

- (void)dealloc
{
  NSLog(@"%@ %@", [self class], NSStringFromSelector(_cmd));
  [super dealloc];
}

@end
