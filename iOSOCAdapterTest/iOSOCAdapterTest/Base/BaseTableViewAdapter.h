//
//  BaseTableViewAdapter.h
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ClickBlock)(id obj);

@interface BaseTableViewAdapter : NSObject<UITableViewDelegate, UITableViewDataSource>

/** 数据源 */
@property (nonatomic, copy) NSArray *dataSource;

/** 高度 */
@property (nonatomic, assign) CGFloat cellHeight;

/** tableView */
@property (nonatomic, strong) UITableView *tableView;

/** cellBlock */
@property (nonatomic, copy) ClickBlock cellBlock;

/** 初始化 */
- (instancetype)initWithTableView:(UITableView *)tableView;

/** 初始化元素 */
- (void)onCreate;

/** 传递结果 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForObj:(id)obj;

@end

NS_ASSUME_NONNULL_END
