//
//  ViewController.m
//  iOSOCAdapterTest
//
//  Created by jackyshan on 2018/10/12.
//  Copyright © 2018年 GCI. All rights reserved.
//

#import "ViewController.h"
#import "MixTableViewAdapter.h"
#import "MixCollectionViewAdapter.h"

@interface ViewController () {
    MixTableViewAdapter *_tAdapter;
    MixCollectionViewAdapter *_cAdapter;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tAdapter = [[MixTableViewAdapter alloc] initWithTableView:_tableView];
    _tAdapter.dataSource = @[@1, @1, @1, @1, @1, @1];
    
    _cAdapter = [[MixCollectionViewAdapter alloc] initWithCollectionView:_collectionView];
    _cAdapter.dataSource = @[@1, @1, @1, @1, @1, @1, @1];

}


@end
