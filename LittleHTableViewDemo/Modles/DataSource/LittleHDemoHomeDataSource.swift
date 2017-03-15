//
//  LittleHDemoHomeDataSource.swift
//  LittleHTableViewDemo
//
//  Created by HYQ on 2017/3/15.
//  Copyright © 2017年 HYQ. All rights reserved.
//

import UIKit

class LittleHDemoHomeDataSource: LittleHTableViewDataSource {
    public override func tableView(_ tableView: UITableView, cellClassForObject object: AnyObject) -> LittleHTableViewBaseCell.Type{
        if object is LittleHDemoHomeItem{
            return LittleHDemoHomeCell.self
        }
        return super.tableView(tableView, cellClassForObject: object)
    }
}
