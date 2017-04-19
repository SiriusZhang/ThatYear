//
//  MenuViewController.m
//  ThatYear
//
//  Created by 刘真 on 16/04/2017.
//  Copyright © 2017 LiuZhen. All rights reserved.
//

#import "MenuViewController.h"
#import <iOS-Slide-Menu/SlideNavigationController.h>
#import "GifPlayerController.h"
#import "ScrollViewController.h"
#import "HomeViewController.h"
#import "BannerViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

+ (instancetype)instantiate {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}
@end
