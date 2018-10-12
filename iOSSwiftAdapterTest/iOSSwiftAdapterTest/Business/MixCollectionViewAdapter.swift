//
//  MixCollectionViewAdapter.swift
//  iOSSwiftAdapterTest
//
//  Created by jackyshan on 2018/10/12.
//  Copyright © 2018年 GCI. All rights reserved.
//

import UIKit

class MixCollectionViewAdapter: BaseCollectionViewAdapter<Int> {

    override func onCreate() {
        let itemCountOnLine: Int = UIScreen.main.bounds.width > 320 ? 4 : 3
        mCollectionView?.collectionViewLayout = UICollectionViewFlowLayout.flowWithItemOnLine(itemCountOnLine, margin: 12)
    
        mCollectionView?.registerNib(MixItemCollectionViewCell.self)
    }
    
    override func jkCollectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath, data: Int) -> UICollectionViewCell {
        let cell: MixItemCollectionViewCell = collectionView.dequeueReusableCell(indexPath: indexPath)
        
        //处理data
        //...
        
        return cell
    }
}
