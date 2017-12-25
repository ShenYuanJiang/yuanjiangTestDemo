//
//  ViewController.h
//  dddddsdsdcsd
//
//  Created by yuanjiang on 2017/12/21.
//  Copyright © 2017年 yuanjiang. All rights reserved.
//

#import <UIKit/UIKit.h>
// 判断是否是iPhone X
#define iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)
// 导航栏高度
#define KNAVIGATION_BAR_HEIGHT (iPhoneX ? 88.f : 64.f)

@interface ViewController : UIViewController


@end

