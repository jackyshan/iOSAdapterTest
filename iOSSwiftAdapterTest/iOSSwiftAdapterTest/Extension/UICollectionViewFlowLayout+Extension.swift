//
//  UICollectionViewFlowLayout+Extension.swift
//  iOSSwiftAdapterTest
//
//  Created by jackyshan on 2018/10/12.
//  Copyright © 2018年 GCI. All rights reserved.
//

import UIKit

public extension UICollectionViewFlowLayout {
    static func flowWithItemOnLine(_ count: Int, margin: CGFloat) -> UICollectionViewFlowLayout {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        let lineItemCount: Int = count
        let itemw: CGFloat = (UIScreen.main.bounds.width  - margin*CGFloat(lineItemCount + 1))/CGFloat(lineItemCount)
        layout.itemSize = CGSize.init(width: itemw, height: itemw)
        layout.sectionInset = UIEdgeInsets.init(top: margin, left: margin, bottom: margin, right: margin)
        layout.minimumLineSpacing = margin
        layout.minimumInteritemSpacing = margin
        
        return layout
    }
}
