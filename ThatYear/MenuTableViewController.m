//
//  MenuTableViewController.m
//  ThatYear
//
//  Created by jiaxu zhang on 2017/4/19.
//  Copyright © 2017年 LiuZhen. All rights reserved.
//

#import "MenuTableViewController.h"
#import <iOS-Slide-Menu/SlideNavigationController.h>
#import "GifPlayerController.h"
#import "ScrollViewController.h"
#import "HomeViewController.h"
#import "BannerViewController.h"

@interface MenuTableViewController ()

@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.separatorStyle = NO;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
//    return 0;
//}


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

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
