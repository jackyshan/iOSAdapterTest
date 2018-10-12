//
//  UITableView+Extension.swift
//  GciUnit
//
//  Created by jackyshan on 2018/6/14.
//  Copyright © 2018年 jackyshan. All rights reserved.
//

import UIKit

public extension UITableView {
    public func register<T: UITableViewCell>(_: T.Type, reuseIdentifier: String = String(describing: T.self)) {
        self.register(T.self, forCellReuseIdentifier: reuseIdentifier)
    }
    
    public func registerNib<T: UITableViewCell>(_: T.Type, reuseIdentifier: String = String(describing: T.self)) {
        self.register(UINib.init(nibName: reuseIdentifier, bundle: nil), forCellReuseIdentifier: reuseIdentifier)
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(indexPath: IndexPath, reuseIdentifier: String = String(describing: T.self)) -> T {
        return self.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! T
    }
}
