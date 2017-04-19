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
    CGRect bounds = self.view.frame;
    bounds.size.height -= 64;
    self.tableView.frame = bounds;
    self.tableView.separatorStyle = NO;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: {
           HomeViewController *home = [HomeViewController instantiate];
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:home withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        case 1: {
//            ScrollViewController *scroll = [ScrollViewController instantiate];
//            scroll.imageName = @"品牌故事.jpg";
//            scroll.isRoot = YES;
//            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:scroll withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        case 2: {
            BannerViewController *banner = [BannerViewController instantiate];
            banner.imageNames = [[NSArray alloc]initWithObjects: @"banner1.JPG", @"banner2.JPG", @"banner3.jpg", @"banner4.jpg", @"banner5.jpg", @"banner6.jpg",nil];
            banner.isRoot = YES;
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:banner withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        case 3: {
            GifPlayerController *gif = [GifPlayerController instantiate];
            gif.imageName = @"私人定制.gif";
            gif.isRoot = YES;
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:gif withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        case 4: {
            GifPlayerController *gif = [GifPlayerController instantiate];
            gif.imageName = @"在线订购.gif";
            gif.isRoot = YES;
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:gif withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        case 5: {
            GifPlayerController *gif = [GifPlayerController instantiate];
            gif.imageName = @"私人定制.gif";
            gif.isRoot = YES;
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:gif withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        default:
            break;
    }
}
@end
