//
//  UIButton+CTKExtension.m
//  CybertronKit
//
//  Created by waynesun on 2019/4/27.
//

#import "UIButton+CTKExtension.h"

static NSString * const CTK_Button_ImageInsetsKey = @"CTK_Button_ImageInsetsKey";
static NSString * const CTK_Button_TitleInsetsKey = @"CTK_Button_TitleInsetsKey";

@implementation UIButton (CTKExtension)

#pragma mark - public api
- (void)ctkConfigWithImage:(UIImage *)image
                     title:(NSString *)title
                 titleFont:(UIFont *)titleFont
                titleColor:(UIColor *)titleColor
                  internal:(CGFloat)internal
                  forState:(UIControlState)state
                  andStyle:(CTKButtonStyle)style {
    if (!image) {
        NSAssert(NO, @"⚠️CTK warning: please set an image for CTK button.");
    }
    
    if (!title) {
        NSAssert(NO, @"⚠️CTK warning: please set an title for CTK button.");
    }
    
    [self setImage:image forState:state];
    [self setTitle:title forState:state];
    [self setTitleColor:titleColor forState:state];
    self.titleLabel.font = titleFont;
    
    self.imageView.backgroundColor = self.backgroundColor;
    self.titleLabel.backgroundColor = self.backgroundColor;
    
    NSDictionary *insetsDict = [self pCalculateEdgeInsets:style internal:internal];
    [self setImageEdgeInsets:UIEdgeInsetsFromString(insetsDict[CTK_Button_ImageInsetsKey])];
    [self setTitleEdgeInsets:UIEdgeInsetsFromString(insetsDict[CTK_Button_TitleInsetsKey])];
}

#pragma mark - private helper
- (NSDictionary *)pCalculateEdgeInsets:(CTKButtonStyle)style
                            internal:(CGFloat)internal {
    
    CGSize selfSize = self.bounds.size;
    CGSize imageSize = self.imageView.bounds.size;
    CGSize titleSize = self.titleLabel.bounds.size;
    CGPoint imageOrigin = self.imageView.frame.origin;
    CGPoint titleOrigin = self.titleLabel.frame.origin;
    
    UIEdgeInsets imageInsets = UIEdgeInsetsZero;
    UIEdgeInsets titleInsets = UIEdgeInsetsZero;
    if (style == CTKButtonStyleImageLeft) {
        imageInsets = UIEdgeInsetsMake(0, -internal/2, 0, internal/2);
        titleInsets = UIEdgeInsetsMake(0, internal/2, 0, -internal/2);
    } else if (style == CTKButtonStyleImageRight) {
        imageInsets = UIEdgeInsetsMake(0, (titleSize.width+internal/2), 0, -(titleSize.width+internal/2));
        titleInsets = UIEdgeInsetsMake(0, -(imageSize.width+internal/2), 0, (imageSize.width+internal/2));
    } else if (style == CTKButtonStyleImageTop) {
        CGFloat imageTop = (selfSize.height-imageSize.height-titleSize.height-internal)/2-imageOrigin.y;
        CGFloat titleTop = ((selfSize.height-imageSize.height-titleSize.height-internal)/2+internal+imageSize.height)-titleOrigin.y;
        imageInsets = UIEdgeInsetsMake(imageTop,
                                       (selfSize.width-imageSize.width)/2-imageOrigin.x,
                                       -imageTop,
                                       imageOrigin.x-(selfSize.width-imageSize.width)/2);
        titleInsets = UIEdgeInsetsMake(titleTop,
                                       (selfSize.width-titleSize.width)/2-titleOrigin.x,
                                       -titleTop,
                                       titleOrigin.x-(selfSize.width-titleSize.width)/2);
    } else if (style == CTKButtonStyleImageBottom) {
        CGFloat imageTop = ((selfSize.height-imageSize.height-titleSize.height-internal)/2+internal+titleSize.height)-imageOrigin.y;
        CGFloat titleTop = (selfSize.height-imageSize.height-titleSize.height-internal)/2-titleOrigin.y;;
        imageInsets = UIEdgeInsetsMake(imageTop,
                                       (selfSize.width-imageSize.width)/2-imageOrigin.x,
                                       -imageTop,
                                       imageOrigin.x-(selfSize.width-imageSize.width)/2);
        titleInsets = UIEdgeInsetsMake(titleTop,
                                       (selfSize.width-titleSize.width)/2-titleOrigin.x,
                                       -titleTop,
                                       titleOrigin.x-(selfSize.width-titleSize.width)/2);
    }
    
    NSDictionary *insetsDict = @{
                                 CTK_Button_ImageInsetsKey : NSStringFromUIEdgeInsets(imageInsets),
                                 CTK_Button_TitleInsetsKey : NSStringFromUIEdgeInsets(titleInsets)
                                 };
    return insetsDict;
}
@end
