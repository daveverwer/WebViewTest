#import "RootViewController.h"
#import "WebViewController.h"

@implementation RootViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
  return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}

#pragma mark Actions
- (IBAction)showPresentationModal:(id)sender
{
  WebViewController *controller = [[WebViewController alloc] initWithNibName:@"WebView" bundle:nil];
  [self presentModalViewController:controller animated:YES];
  [controller release]; controller = nil;
}

@end
