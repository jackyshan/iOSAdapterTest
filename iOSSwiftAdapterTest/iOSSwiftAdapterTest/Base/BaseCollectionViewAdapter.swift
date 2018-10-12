//
//  BaseCollectionViewAdapter.swift
//  JKUnit
//
//  Created by jackyshan on 2018/1/2.
//  Copyright © 2018年 GCI. All rights reserved.
//

import UIKit

class BaseCollectionViewAdapter<T>: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var cellClick:((_ obj:T)->Void)?
    var mCollectionView: UICollectionView?
    var mDataSource: [T] = [T]()
    
    init(_ collectionView: UICollectionView) {
        super.init()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        mCollectionView = collectionView
        onCreate()
    }
    
    func onCreate() {
        
    }

    var dataSoure: [T] = [] {
        willSet {
            mDataSource = newValue
        }
        
        didSet {
            mCollectionView?.reloadData()
        }
    }
    
    // MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mDataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data: T = mDataSource[indexPath.item]
        return jkCollectionView(collectionView, cellForItemAt: indexPath, data: data)
    }
    
    func jkCollectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath, data: T) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    // MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        cellClick?(mDataSource[indexPath.item])
    }
    
    func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }

    // MARK: - other
    func cellOnClick(_ action:@escaping (T) -> Void) {
        self.cellClick = action
    }

}
