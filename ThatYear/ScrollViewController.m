//
//  ScrollViewController.m
//  ThatYear
//
//  Created by 刘真 on 16/04/2017.
//  Copyright © 2017 LiuZhen. All rights reserved.
//

#import "ScrollViewController.h"
#import "ImageScrollView.h"

@interface ScrollViewController ()

@property (weak, nonatomic) IBOutlet ImageScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ScrollViewController

+ (instancetype)instantiate {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:[self.imageName stringByDeletingPathExtension] ofType:[self.imageName pathExtension]];
    self.scrollView.image = [UIImage imageWithContentsOfFile:imagePath];
}

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu {
    return self.isRoot;
}

@end
