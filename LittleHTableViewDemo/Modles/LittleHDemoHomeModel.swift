//
//  LittleHDemoHomeModel.swift
//  LittleHTableViewDemo
//
//  Created by HYQ on 2017/3/15.
//  Copyright © 2017年 HYQ. All rights reserved.
//

import UIKit

class LittleHDemoHomeModel: LittleHTableViewModel {
    public func loadItems(_ completion : @escaping (NSDictionary?) -> Void){
        self.items?.removeAllObjects()
        for i in 0...10{
            let item = LittleHDemoHomeItem.defualtItem()
            item.title = "demo" + "\(i)"
            item.index = i
            
            self.items?.add(item)
        }
        
        completion(nil)
    }
}
