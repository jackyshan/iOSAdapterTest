//
//  MixTableViewAdapter.m
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import "MixTableViewAdapter.h"
#import "MixVolumeTableViewCell.h"

@implementation MixTableViewAdapter

- (void)onCreate {
    self.cellHeight = 60;
    [self.tableView registerNib:[MixVolumeTableViewCell class]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForObj:(id)obj {
    MixVolumeTableViewCell *cell = [tableView dequeueReusableCell:[MixVolumeTableViewCell class]];
    return cell;
}

@end
