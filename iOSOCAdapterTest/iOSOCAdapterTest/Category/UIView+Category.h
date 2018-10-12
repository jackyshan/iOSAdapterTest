//
//  UIView+Category.h
//  zansleep
//
//  Created by jackyshan on 2018/10/4.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Category)

/** 圆角半径 */
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

/** 边线宽度 */
@property (nonatomic, assign) IBInspectable CGFloat bWidth;

/** 边线颜色 */
@property (nonatomic, strong) IBInspectable UIColor *bColor;

/** 是否选中 */
@property (nonatomic, assign) IBInspectable BOOL isChecked;

/** 选中背景色 */
@property (nonatomic, strong) IBInspectable UIColor *sbgColor;

/** 未选中背景色 */
@property (nonatomic, strong) IBInspectable UIColor *nbgColor;

@end

NS_ASSUME_NONNULL_END
