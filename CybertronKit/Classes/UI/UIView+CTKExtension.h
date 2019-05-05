//
//  UIView+CTKExtension.h
//  CybertronKit
//
//  Created by waynesun on 2019/5/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CTKExtension)

- (void)ctkConfigRadius:(CGFloat)radius
            borderWidth:(CGFloat)borderWidth
            borderColor:(UIColor *)borderColor
            shadowColor:(UIColor *)shadowColor
           shadowRadius:(CGFloat)shadowRadius
          shadowOpacity:(CGFloat)shadowOpacity
         shadowPathRect:(CGRect)shadowPathRect;
@end

NS_ASSUME_NONNULL_END
