//
//  MenuViewController.h
//  ThatYear
//
//  Created by 刘真 on 16/04/2017.
//  Copyright © 2017 LiuZhen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UITableView *tableView;

+ (instancetype)instantiate;

@end
