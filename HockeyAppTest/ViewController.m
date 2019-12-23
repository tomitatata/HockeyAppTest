//
//  ViewController.m
//  HockeyAppTest
//
//  Created by 富田英明 on 2019/12/23.
//  Copyright © 2019 富田英明. All rights reserved.
//

#import "ViewController.h"

// AppCenter
@import AppCenter;
@import AppCenterCrashes;
#define TEXT_WITDH 220.0f


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // 画面サイズ取得
    CGRect rect = [[UIScreen mainScreen] bounds];
    NSLog(@"rect1.size.width : %f , rect1.size.height : %f", rect.size.width, rect.size.height);
    
    // Title 表示
    UILabel *lableTitle= [[UILabel alloc] init];
    lableTitle.frame = CGRectMake(rect.size.width/2 - TEXT_WITDH/2, 150, TEXT_WITDH, 30);
//    lableTitle.backgroundColor = [UIColor lightGrayColor];
    lableTitle.textColor = [UIColor blackColor];
    lableTitle.font = [UIFont fontWithName:@"AppleGothic" size:32];
    lableTitle.textAlignment = NSTextAlignmentCenter;
    lableTitle.text = @"HockeyApp";
    [self.view addSubview:lableTitle];

    // Version 取得
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    NSLog( @"bundle version: %@", version );
    NSString *tag = @"Version : ";
    NSString *str = [tag stringByAppendingString:version];
    
    // Version 表示
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(rect.size.width/2 - TEXT_WITDH/2, rect.size.height - 150, TEXT_WITDH, 30);
//    label.backgroundColor = [UIColor lightGrayColor];
    label.textColor = [UIColor blackColor];
    label.font = [UIFont fontWithName:@"AppleGothic" size:20];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = str;
    [self.view addSubview:label];

    
    [MSAppCenter start:@"219a80d3-ca3b-479c-b01a-0b3649e61357" withServices:@[[MSCrashes class]
                                                                              ]];
}


@end
