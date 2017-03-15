//
//  LittleHTableViewBaseCell.swift
//  LittleHTableViewDemo
//
//  Created by HYQ on 2017/3/14.
//  Copyright © 2017年 HYQ. All rights reserved.
//

import UIKit

public class LittleHTableViewBaseCell: UITableViewCell {

    var _object:AnyObject?
    
    public var item:AnyObject? {
        get {
            return _object
        }
    }
    
    public func setObject (_ obj:AnyObject?) -> Void {
        _object = obj
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public class func tableView(_ tableView: UITableView, rowHeightForObject object: AnyObject) -> CGFloat {
        return 0
    }
    
    public class func LittleHIdentifier() -> String {
        return "\(LittleHTableViewBaseCell.self)"
    }
    
    required public override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
