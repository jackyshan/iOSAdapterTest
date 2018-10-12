//
//  UICollectionView+Extension.swift
//  GciUnit
//
//  Created by jackyshan on 2018/6/14.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

import UIKit

public extension UICollectionView {
    public func register<T: UICollectionViewCell>(_: T.Type, reuseIdentifier: String = String(describing: T.self)) {
        self.register(T.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    public func registerNib<T: UICollectionViewCell>(_: T.Type, reuseIdentifier: String = String(describing: T.self)) {
        self.register(UINib.init(nibName: reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    public func dequeueReusableCell<T: UICollectionViewCell>(indexPath: IndexPath, reuseIdentifier: String = String(describing: T.self)) -> T {
        return self.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! T
    }
}
