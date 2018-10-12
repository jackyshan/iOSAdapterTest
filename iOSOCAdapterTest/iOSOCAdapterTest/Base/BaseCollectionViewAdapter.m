//
//  BaseCollectionViewAdapter.m
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import "BaseCollectionViewAdapter.h"

@implementation BaseCollectionViewAdapter

- (instancetype)initWithCollectionView:(UICollectionView *)collectionView {
    if (self = [super init]) {
        _collectionView = collectionView;
        collectionView.delegate = self;
        collectionView.dataSource = self;
        [self onCreate];
    }
    
    return self;
}

- (void)onCreate {
    
}

- (void)setDataSource:(NSArray *)dataSource {
    _dataSource = dataSource;
    
    [_collectionView reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [self collectionView:collectionView cellForObj:_dataSource[indexPath.item] andIndexPath:indexPath];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForObj:(id)obj andIndexPath:(NSIndexPath *)indexPath {
    return [UICollectionViewCell new];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    if (_cellBlock == nil) {
        return;
    }
    _cellBlock(_dataSource[indexPath.item]);
}

@end
