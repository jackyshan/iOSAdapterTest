//
//  UICollectionView+Category.m
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import "UICollectionView+Category.h"

@implementation UICollectionView (Category)

- (void)registerNib:(Class)className {
    NSString *identifer = NSStringFromClass(className);
    [self registerNib:[UINib nibWithNibName:identifer bundle:nil] forCellWithReuseIdentifier:identifer];
}

- (id)dequeueReusableCell:(Class)className forIdp:(NSIndexPath *)indexPath {
    NSString *identifer = NSStringFromClass(className);
    return [self dequeueReusableCellWithReuseIdentifier:identifer forIndexPath:indexPath];
}

@end
