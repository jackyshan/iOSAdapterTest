//
//  UICollectionView+Category.h
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (Category)

/** 注册 */
- (void)registerNib:(Class)className;
/** 取出缓存 */
- (id)dequeueReusableCell:(Class)className forIdp:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
