//
//  ViewController.m
//  reactnativeintotest
//
//  Created by cyqresig on 17/1/27.
//  Copyright © 2017年 react-native-component. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)ToReactNativeWorldPressed:(id)sender {
    NSLog(@"ToReactNativeWorldPressed");
   
    
    
    NSURL *jsCodeLocation;
    
//    jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index.ios" fallbackResource:nil];
    
    jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"index.ios" withExtension:@"jsbundle"];
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"HelloWorld"
                                                 initialProperties:@{
                                                                     @"scores" : @[
                                                                             @{
                                                                                 @"name" : @"Alex",
                                                                                 @"value": @"42"
                                                                                 },
                                                                             @{
                                                                                 @"name" : @"Joel",
                                                                                 @"value": @"10"
                                                                                 }
                                                                             ]
                                                                     }

                                                     launchOptions:nil];

    
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
