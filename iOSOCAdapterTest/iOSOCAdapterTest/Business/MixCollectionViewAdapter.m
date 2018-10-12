//
//  MixCollectionViewAdapter.m
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import "MixCollectionViewAdapter.h"
#import "MixItemCollectionViewCell.h"

@implementation MixCollectionViewAdapter

- (void)onCreate {
    NSInteger itemCountOnLine = [UIScreen mainScreen].bounds.size.width > 320 ? 4 : 3;
    self.collectionView.collectionViewLayout = [UICollectionViewFlowLayout flowLayoutWithItemCountOnLine:itemCountOnLine forMargin:12];
    
    [self.collectionView registerNib:[MixItemCollectionViewCell class]];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForObj:(id)obj andIndexPath:(nonnull NSIndexPath *)indexPath {
    MixItemCollectionViewCell *cell = [collectionView dequeueReusableCell:[MixItemCollectionViewCell class] forIdp:indexPath];
    cell.bgView.isChecked = YES;
    
    return cell;
}

@end
