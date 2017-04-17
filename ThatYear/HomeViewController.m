//
//  HomeViewController.m
//  SlideMenu
//
//  Created by Aryan Gh on 4/24/13.
//  Copyright (c) 2013 Aryan Ghassemi. All rights reserved.
//

#import "HomeViewController.h"
#import "GifPlayerController.h"
#import "ScrollViewController.h"
#import "BannerViewController.h"


@implementation HomeViewController

+ (instancetype)instantiate {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu {
	return YES;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"flag"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 248)];
    [cell.contentView addSubview:imageView];
    switch (indexPath.row) {
        case 0:{
            [imageView setImage:[UIImage imageNamed:@"pic1.jpg"]];
        }
            break;
        case 1:{
            [imageView setImage:[UIImage imageNamed:@"pic2.jpg"]];
        }
            break;
        case 2:{
            [imageView setImage:[UIImage imageNamed:@"pic3.jpg"]];
        }
            break;
        default:
            break;
    }
    return cell;
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 248;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:{
            ScrollViewController *scroll = [ScrollViewController instantiate];
            scroll.imageName = @"品牌故事.jpg";
            scroll.isRoot = YES;
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:scroll withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        case 1:{
            BannerViewController *banner = [BannerViewController instantiate];
            banner.isRoot = YES;
            [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:banner withSlideOutAnimation:NO andCompletion:nil];
        }
            break;
        case 2:{
            NSLog(@"点击了第三行");
        }
            break;
        default:
            break;
    }
}

@end
