//
//  UIButton+CTKExtension.h
//  CybertronKit
//
//  Created by waynesun on 2019/4/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    CTKButtonStyleImageLeft,
    CTKButtonStyleImageRight,
    CTKButtonStyleImageTop,
    CTKButtonStyleImageBottom
} CTKButtonStyle;

@interface UIButton (CTKExtension)

/**
 设置按钮图片和标题的样式

 @param image 图片
 @param title 标题
 @param titleFont 标题字号
 @param titleColor 标题颜色
 @param internal 图片和标题之间的距离
 @param state UIControlState
 @param style CTKButtonStyle
 */
- (void)ctkConfigWithImage:(UIImage *)image
                     title:(NSString *)title
                 titleFont:(UIFont *)titleFont
                titleColor:(UIColor *)titleColor
                  internal:(CGFloat)internal
                  forState:(UIControlState)state
                  andStyle:(CTKButtonStyle)style;
@end

NS_ASSUME_NONNULL_END
