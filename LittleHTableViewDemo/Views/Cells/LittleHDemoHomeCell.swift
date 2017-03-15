//
//  LittleHDemoHomeCell.swift
//  LittleHTableViewDemo
//
//  Created by HYQ on 2017/3/15.
//  Copyright © 2017年 HYQ. All rights reserved.
//

import UIKit

class LittleHDemoHomeCell: LittleHTableViewBaseCell {
    var titleLabel : UILabel?
    var indexLabel : UILabel?
    public override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required public init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.createHomeStyle()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createHomeStyle(){
        let titleLabel = UILabel()
        titleLabel.frame = CGRect.init(x: 10, y: 0, width: 100, height: 30)
        titleLabel.textColor = .red
        titleLabel.font = UIFont.systemFont(ofSize: 13)
        self.contentView.addSubview(titleLabel)
        self.titleLabel = titleLabel
        
        let mainW = UIScreen.main.bounds.width
        let indexLabel = UILabel()
        indexLabel.frame = CGRect.init(x: mainW - 100 - 10, y: 0, width: 100, height: 30)
        indexLabel.textColor = .brown
        indexLabel.font = UIFont.systemFont(ofSize: 10)
        self.contentView.addSubview(indexLabel)
        self.indexLabel = indexLabel
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.titleLabel?.text = nil
        self.indexLabel?.text = nil
    }
    
    public override func setObject(_ obj: AnyObject?) {
        super.setObject(obj)
        if obj is LittleHDemoHomeItem{
            let item = obj as! LittleHDemoHomeItem
            self.titleLabel?.text = item.title
            self.indexLabel?.text = String(describing: item.index!)
        }
        
    }
    
    public override class func LittleHIdentifier()->String{
        return "\(LittleHDemoHomeCell.self)"
    }
    
    public override class func tableView(_ tableView: UITableView, rowHeightForObject object: AnyObject) -> CGFloat {
        if object is LittleHDemoHomeItem{
            let item = object as! LittleHDemoHomeItem
            return item.size?.height ?? 0
        }
        
        return 30
    }

}
