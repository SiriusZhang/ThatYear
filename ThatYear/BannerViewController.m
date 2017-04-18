//
//  BannerViewController.m
//  ThatYear
//
//  Created by jiaxu zhang on 2017/4/17.
//  Copyright © 2017年 LiuZhen. All rights reserved.
//

#import "BannerViewController.h"


@interface BannerViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@end

@implementation BannerViewController

+ (instancetype)instantiate {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    CGRect bounds = self.view.frame;
    bounds.size.height -= 64;
    self.scrollview.frame = bounds;
    
    CGFloat imageW = self.scrollview.frame.size.width;
    CGFloat imageH = self.scrollview.frame.size.height;
    CGFloat imageY = 0;
        for (int i = 0; i < self.imageNames.count; i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        UIImage *image = [UIImage imageNamed:self.imageNames[i]];
        [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
        CGFloat imageX = i * imageW;
                        
        imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
        imageView.image = image;
        self.scrollview.showsHorizontalScrollIndicator = NO;
        [self.scrollview addSubview:imageView];
    }
    
    CGFloat contentW = self.imageNames.count *imageW;
    self.scrollview.contentSize = CGSizeMake(contentW, 0);
    self.scrollview.pagingEnabled = YES;
    self.pageControl.numberOfPages= self.imageNames.count;
    self.scrollview.delegate = self;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat scrollviewW =  scrollView.frame.size.width;
    CGFloat x = scrollView.contentOffset.x;
    int page = (x + scrollviewW / 2) /  scrollviewW;
    self.pageControl.currentPage = page;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu {
    return self.isRoot;
}



@end
