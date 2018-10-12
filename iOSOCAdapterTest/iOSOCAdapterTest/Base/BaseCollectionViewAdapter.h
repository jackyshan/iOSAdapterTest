//
//  BaseCollectionViewAdapter.h
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ClickBlock)(id obj);

@interface BaseCollectionViewAdapter : NSObject<UICollectionViewDelegate, UICollectionViewDataSource>

/** 数据源 */
@property (nonatomic, copy) NSArray *dataSource;

/** collectionView */
@property (nonatomic, strong) UICollectionView *collectionView;

/** cellBlock */
@property (nonatomic, copy) ClickBlock cellBlock;

/** 初始化 */
- (instancetype)initWithCollectionView:(UICollectionView *)collectionView;

/** 初始化元素 */
- (void)onCreate;

/** 传递结果 */
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForObj:(id)obj andIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
