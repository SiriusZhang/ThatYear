//
//  GifPlayerController.m
//  ThatYear
//
//  Created by 刘真 on 16/04/2017.
//  Copyright © 2017 LiuZhen. All rights reserved.
//

#import "GifPlayerController.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface GifPlayerController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation GifPlayerController

+ (instancetype)instantiate {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:[self.imageName stringByDeletingPathExtension] ofType:[self.imageName pathExtension]];
    NSURL *url = [NSURL fileURLWithPath:imagePath];
    [self.imageView sd_setImageWithURL:url];
}

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu {
    return self.isRoot;
}

@end
