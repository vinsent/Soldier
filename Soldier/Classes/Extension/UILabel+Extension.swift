//
//  UILable+Extension.swift
//  Soldier
//
//  Created by vinsent on 2018/9/15.
//

public extension UILabel {
    
    convenience init(title: String = "", font titleFont: CGFloat, color titleColor: UIColor = .darkText, alignment: NSTextAlignment = .left, backgroundColor: UIColor = .white, corner radius: CGFloat = 0, numberOfLines: Int = 1) {
        self.init()
        text = title
        font = UIFont.systemFont(ofSize: titleFont)
        textColor = titleColor
        textAlignment = alignment
        self.backgroundColor = backgroundColor
        layer.cornerRadius = radius
        self.numberOfLines = numberOfLines
    }
}

