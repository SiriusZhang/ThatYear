//
//  ImageScrollView.m
//  ThatYear
//
//  Created by 刘真 on 16/04/2017.
//  Copyright © 2017 LiuZhen. All rights reserved.
//

#import "ImageScrollView.h"

@implementation ImageScrollView {
    UIImageView *_imageView;
}

- (void)commonInit {
    self.showsVerticalScrollIndicator = NO;
    self.showsHorizontalScrollIndicator = NO;
    self.bouncesZoom = YES;
    self.decelerationRate = UIScrollViewDecelerationRateFast;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _imageView.frame = CGRectMake(0, 0, self.contentSize.width, self.contentSize.height);
}

- (void)setImage:(UIImage *)image {
   
    _image = image;
    
    [_imageView removeFromSuperview];
    _imageView = nil;
    
    _imageView = [[UIImageView alloc] initWithImage:image];
    [self addSubview:_imageView];
    
    [self configureForImageSize:image.size];

}

- (void)configureForImageSize:(CGSize)imageSize {
    CGFloat w = CGRectGetWidth(self.frame);
    CGFloat h = imageSize.height/imageSize.width * w;
    self.contentSize = CGSizeMake(w, h);
}

@end
