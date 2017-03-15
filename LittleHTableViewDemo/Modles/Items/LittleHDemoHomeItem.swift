//
//  LittleHDemoHome.swift
//  LittleHTableViewDemo
//
//  Created by HYQ on 2017/3/15.
//  Copyright © 2017年 HYQ. All rights reserved.
//

import UIKit

class LittleHDemoHomeItem: LittleHTableViewBaseItem {
    var title : String?
    var size : CGSize?
    var index : NSInteger?
    
    public class func defualtItem()->LittleHDemoHomeItem{
        let item = LittleHDemoHomeItem()
        let mainWidth = UIScreen.main.bounds.width
        item.title = "demo cell"
        item.size = CGSize.init(width: mainWidth, height: 30)
        item.index = 0
        
        return item
    }
}
