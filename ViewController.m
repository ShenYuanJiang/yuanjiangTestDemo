//
//  ViewController.m
//  dddddsdsdcsd
//
//  Created by yuanjiang on 2017/12/21.
//  Copyright © 2017年 yuanjiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>

/** */
@property(nonatomic,strong) UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.webView];
    
    NSURL *Url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:Url];
    [self.webView loadRequest:request];
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"%s %d",__FUNCTION__,webView.canGoBack);
    if (webView.canGoBack == YES) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.navigationController setNavigationBarHidden:YES];
        });
    }
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}


-(UIWebView *)webView
{
    if (!_webView) {
        _webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width, self.view.frame.size.height)];
        _webView.delegate = self;
        
    }
    return _webView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
