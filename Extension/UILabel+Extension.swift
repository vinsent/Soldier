//
//  UILable+Extension.swift
//  Soldier
//
//  Created by wangzhen on 2018/9/15.
//

public extension UILabel {
    
    convenience init(title: String = "", titleFont fontValue: CGFloat, titleColor: UIColor = .darkText, alignment: NSTextAlignment = .left, backgroundColor: UIColor = .white, corner radius: CGFloat = 0, numberOfLines: Int = 1) {
        self.init()
        text = title
        font = UIFont.systemFont(ofSize: fontValue)
        textColor = titleColor
        textAlignment = alignment
        self.backgroundColor = backgroundColor
        layer.cornerRadius = radius
        self.numberOfLines = numberOfLines
    }
}

