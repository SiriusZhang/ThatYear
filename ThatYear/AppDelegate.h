//
//  AppDelegate.h
//  ThatYear
//
//  Created by jiaxu zhang on 2017/4/16.
//  Copyright © 2017年 jiaxu zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

