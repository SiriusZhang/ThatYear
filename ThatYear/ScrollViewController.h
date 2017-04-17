//
//  ScrollViewController.h
//  ThatYear
//
//  Created by 刘真 on 16/04/2017.
//  Copyright © 2017 LiuZhen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface ScrollViewController : UIViewController<SlideNavigationControllerDelegate>

@property (nonatomic, strong) NSString *imageName;
@property (nonatomic) BOOL isRoot;

+ (instancetype)instantiate;

@end
