//
//  UIView+Category.m
//  zansleep
//
//  Created by jackyshan on 2018/10/4.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import "UIView+Category.h"
#import <objc/runtime.h>

@implementation UIView (Category)

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setBColor:(UIColor *)bColor {
    self.layer.borderColor = bColor.CGColor;
}

- (UIColor *)bColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBWidth:(CGFloat)bWidth {
    self.layer.borderWidth = bWidth;
}

- (CGFloat)bWidth {
    return self.layer.borderWidth;
}

- (void)setSbgColor:(UIColor *)sbgColor {
    objc_setAssociatedObject(self, @selector(sbgColor), sbgColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)sbgColor {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setNbgColor:(UIColor *)nbgColor {
    objc_setAssociatedObject(self, @selector(nbgColor), nbgColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)nbgColor {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setIsChecked:(BOOL)isChecked {
    NSNumber *number = [NSNumber numberWithBool:isChecked];
    objc_setAssociatedObject(self, @selector(isChecked), number, OBJC_ASSOCIATION_ASSIGN);

    self.backgroundColor = isChecked ? self.sbgColor : self.nbgColor;
}

- (BOOL)isChecked {
    NSNumber *number = objc_getAssociatedObject(self, _cmd);
    return [number boolValue];
}

@end
