//
//  UICollectionViewFlowLayout+Category.h
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionViewFlowLayout (Category)

+ (UICollectionViewFlowLayout *)flowLayoutWithItemCountOnLine:(NSInteger)count forMargin:(CGFloat)margin;

@end

NS_ASSUME_NONNULL_END
