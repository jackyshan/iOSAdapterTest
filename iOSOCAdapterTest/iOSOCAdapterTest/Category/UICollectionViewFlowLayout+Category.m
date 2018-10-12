//
//  UICollectionViewFlowLayout+Category.m
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import "UICollectionViewFlowLayout+Category.h"

@implementation UICollectionViewFlowLayout (Category)

+ (UICollectionViewFlowLayout *)flowLayoutWithItemCountOnLine:(NSInteger)count forMargin:(CGFloat)margin {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    CGFloat lineItemCount = count;
    CGFloat itemw = ([UIScreen mainScreen].bounds.size.width - margin*(lineItemCount + 1))/lineItemCount;
    layout.itemSize = CGSizeMake(itemw, itemw);
    layout.sectionInset = UIEdgeInsetsMake(margin, margin, margin, margin);
    layout.minimumLineSpacing = margin;
    layout.minimumInteritemSpacing = margin;
    
    return layout;
}

@end
