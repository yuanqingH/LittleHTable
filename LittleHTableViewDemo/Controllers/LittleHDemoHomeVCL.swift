//
//  LittleHDemoHomeVCL.swift
//  LittleHTableViewDemo
//
//  Created by HYQ on 2017/3/15.
//  Copyright © 2017年 HYQ. All rights reserved.
//

import UIKit

class LittleHDemoHomeVCL: LittleHTableViewBaseVCL {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.model = LittleHDemoHomeModel()
        let model = self.model as? LittleHDemoHomeModel
        model?.loadItems({ [weak self](dict) in
            self?.reloadData()
        })
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func reloadData(){
        let model = self.model as? LittleHDemoHomeModel
        let ds = LittleHDemoHomeDataSource.init(items: (model?.items)!)
        self.dataSource = ds
    }

}
