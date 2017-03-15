//
//  ViewController.swift
//  LittleHTableViewDemo
//
//  Created by HYQ on 2017/3/10.
//  Copyright © 2017年 HYQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .brown
        
        self.createForwardBtn()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createForwardBtn(){
        let fBtn = UIButton.init(type: .custom)
        fBtn.frame = CGRect.init(x: 0, y: 0, width: 150, height: 30)
        fBtn.center = self.view.center
        fBtn.setTitle("openTable", for: .normal)
        fBtn.setTitleColor(UIColor.white, for: .normal)
        fBtn.backgroundColor = .red
        
        fBtn.addTarget(self, action: #selector(ViewController.openTableVCL), for: .touchUpInside)
        
        self.view.addSubview(fBtn)
        
    }

    func openTableVCL() {
        let homeTableVcl = LittleHDemoHomeVCL()
        self.navigationController?.pushViewController(homeTableVcl, animated: true)
    }
}

