//
//  UITableView+Category.m
//  zansleep
//
//  Created by jackyshan on 2018/10/11.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

#import "UITableView+Category.h"

@implementation UITableView (Category)

- (void)registerNib:(Class)className {
    NSString *identifer = NSStringFromClass(className);
    [self registerNib:[UINib nibWithNibName:identifer bundle:nil] forCellReuseIdentifier:identifer];
}

- (id)dequeueReusableCell:(Class)className {
    NSString *identifer = NSStringFromClass(className);
    return [self dequeueReusableCellWithIdentifier:identifer];
}

@end
