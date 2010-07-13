@interface WebViewController : UIViewController <UIWebViewDelegate>
{
  UIWebView *_webView;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;

@end
