#import "WebViewController.h"

@implementation WebViewController

@synthesize webView = _webView;

#pragma mark View lifecycle
- (void)viewDidLoad
{
  [super viewDidLoad];

  NSURL *URL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]];
  NSURLRequest *request = [NSURLRequest requestWithURL:URL];
  [self.webView loadRequest:request];
}

#pragma mark Web view delegate
- (BOOL)webView:(UIWebView *)webView
shouldStartLoadWithRequest:(NSURLRequest *)request
 navigationType:(UIWebViewNavigationType)navigationType
{
  NSString *lastPathComponent = [[[request URL] path] lastPathComponent];
  if ([lastPathComponent isEqualToString:@"call"]) {
    NSString *query = [[request URL] query];
    NSArray *params = [query componentsSeparatedByString:@"="];
    if ([[params objectAtIndex:0] isEqualToString:@"cmd"] &&
        [[params objectAtIndex:1] isEqualToString:@"exit"])
      [self dismissModalViewControllerAnimated:YES];
    return NO;
  } else return YES;
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
  NSLog(@"Error: %@", error);
}

#pragma mark Autorotation
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
  return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}

#pragma mark Memory management
- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];

  NSLog(@"Memory warning: %@", [self class]);
}

- (void)viewDidUnload
{
  NSLog(@"%@ %@", [self class], NSStringFromSelector(_cmd));

  self.webView = nil;
  [super viewDidUnload];
}

- (void)dealloc
{
  NSLog(@"%@ %@", [self class], NSStringFromSelector(_cmd));

  self.webView = nil;
  [super dealloc];
}

@end
