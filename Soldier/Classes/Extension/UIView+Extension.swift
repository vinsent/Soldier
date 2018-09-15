//
//  UIView+Extension.swift
//  Soldier
//
//  Created by wangzhen on 2018/9/15.
//

public extension UIView {

    convenience init(background color: UIColor, corner radius: CGFloat = 0) {
        self.init()
        backgroundColor = color
        layer.cornerRadius = radius
    }
}
