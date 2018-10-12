//
//  BaseTableViewAdapter.swift
//  JKUnit
//
//  Created by jackyshan on 2017/6/25.
//  Copyright © 2017年 jackyshan. All rights reserved.
//

import UIKit

class BaseTableViewAdapter<T>: NSObject, UITableViewDelegate, UITableViewDataSource {
    var cellClick:((_ obj:T)->Void)?
    var cellClickIndex:((_ obj:T,_ index:IndexPath)->Void)?
    
    var mTableView:UITableView?
    var mDataSource:[T]?
    var cellHeight:CGFloat = 60
    
    init(_ tableView: UITableView) {
        super.init()
        mTableView = tableView
        mTableView!.dataSource = self
        mTableView!.delegate = self

        onCreate()
    }
    
    var dataSoure:[T] = []{
        willSet{
            mDataSource = newValue
        }
        
        didSet{
            mTableView?.reloadData()
        }
    }
    
    func onCreate() {
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.mTableView!.deselectRow(at: indexPath, animated: true)
        self.cellClick?(self.mDataSource![indexPath.row])
        self.cellClickIndex?(self.mDataSource![indexPath.row], indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mDataSource?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data: T = self.mDataSource![indexPath.row]
        return jkTableView(tableView, cellForRowAtIndexPath: indexPath, bingData: data)
    }
    
    func jkTableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath, bingData: T) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func cellOnClick(_ action:@escaping (T) -> Void){
        self.cellClick = action
    }
    
    func cellOnClickIndex(_ action:@escaping (_ obj:T,_ index:IndexPath)->Void){
        self.cellClickIndex = action
    }
    
}
