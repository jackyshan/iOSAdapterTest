//
//  ViewController.swift
//  iOSSwiftAdapterTest
//
//  Created by jackyshan on 2018/10/12.
//  Copyright © 2018年 GCI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var cAdapter: MixCollectionViewAdapter?
    var tAdapter: MixTableViewAdapter?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cAdapter = MixCollectionViewAdapter(collectionView)
        cAdapter?.dataSoure = [1, 1, 1, 1, 1, 1, 1]
        
        tAdapter = MixTableViewAdapter(tableView)
        tAdapter?.dataSoure = [1, 1, 1, 1, 1, 1, 1]
    }
}

