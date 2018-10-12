//
//  UIView+Extension.swift
//  iOSSwiftAdapterTest
//
//  Created by jackyshan on 2018/10/12.
//  Copyright © 2018年 GCI. All rights reserved.
//

import UIKit

public extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }

}
