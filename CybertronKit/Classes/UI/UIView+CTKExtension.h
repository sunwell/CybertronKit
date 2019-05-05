//
//  UIView+CTKExtension.h
//  CybertronKit
//
//  Created by waynesun on 2019/5/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CTKExtension)


/**
 设置圆角和阴影效果

 @param radius 圆角半径
 @param borderWidth 边宽
 @param borderColor 边颜色
 @param shadowColor 阴影颜色
 @param shadowRadius 阴影半径
 @param shadowOpacity 阴影透明度
 @param shadowPathRect 阴影路径边框
 */
- (void)ctkConfigRadius:(CGFloat)radius
            borderWidth:(CGFloat)borderWidth
            borderColor:(UIColor *)borderColor
            shadowColor:(UIColor *)shadowColor
           shadowRadius:(CGFloat)shadowRadius
          shadowOpacity:(CGFloat)shadowOpacity
         shadowPathRect:(CGRect)shadowPathRect;
@end

NS_ASSUME_NONNULL_END
