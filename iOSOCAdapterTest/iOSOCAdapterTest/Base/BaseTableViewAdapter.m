//
//  BaseTableViewAdapter.m
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import "BaseTableViewAdapter.h"

@implementation BaseTableViewAdapter

- (instancetype)initWithTableView:(UITableView *)tableView {
    if (self = [super init]) {
        _tableView = tableView;
        tableView.delegate = self;
        tableView.dataSource = self;
        [self onCreate];
    }
    
    return self;
}

- (void)onCreate {
    _cellHeight = 64;
}

- (void)setDataSource:(NSArray *)dataSource {
    _dataSource = dataSource;
    
    [_tableView reloadData];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return _cellHeight;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [self tableView:tableView cellForObj:_dataSource[indexPath.row]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForObj:(id)obj {
    return [UITableViewCell new];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:true];
    if (_cellBlock == nil) {
        return;
    }
    _cellBlock(_dataSource[indexPath.row]);
}

@end
