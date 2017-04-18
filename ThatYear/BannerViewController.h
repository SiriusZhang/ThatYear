//
//  BannerViewController.h
//  ThatYear
//
//  Created by jiaxu zhang on 2017/4/17.
//  Copyright © 2017年 LiuZhen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BannerViewController : UIViewController
@property (nonatomic) BOOL isRoot;
@property (nonatomic, strong) NSArray *imageNames;

+ (instancetype)instantiate;
@end
