//
//  UIView+CTKExtension.m
//  CybertronKit
//
//  Created by waynesun on 2019/5/5.
//

#import "UIView+CTKExtension.h"

@implementation UIView (CTKExtension)

- (void)ctkConfigRadius:(CGFloat)radius
            borderWidth:(CGFloat)borderWidth
            borderColor:(UIColor *)borderColor
            shadowColor:(UIColor *)shadowColor
           shadowRadius:(CGFloat)shadowRadius
          shadowOpacity:(CGFloat)shadowOpacity
         shadowPathRect:(CGRect)shadowPathRect {
    
    self.layer.cornerRadius = radius;
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = borderColor.CGColor;
    
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowRadius = shadowRadius;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:shadowPathRect].CGPath;
}
@end
