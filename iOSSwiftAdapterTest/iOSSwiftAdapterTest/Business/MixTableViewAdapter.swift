//
//  MixTableViewAdapter.swift
//  iOSSwiftAdapterTest
//
//  Created by jackyshan on 2018/10/12.
//  Copyright © 2018年 GCI. All rights reserved.
//

import UIKit

class MixTableViewAdapter: BaseTableViewAdapter<Int> {

    override func onCreate() {
        cellHeight = 60
        mTableView?.registerNib(MixVolumeTableViewCell.self)
    }
    
    override func jkTableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath, bingData: Int) -> UITableViewCell {
        let cell: MixVolumeTableViewCell = tableView.dequeueReusableCell(indexPath: indexPath)
        
        //处理data
        //...
        
        return cell
    }
    
}
