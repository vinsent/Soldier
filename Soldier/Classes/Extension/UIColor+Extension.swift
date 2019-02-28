//
//  UIColor+Extension.swift
//  Soldier
//
//  Created by vinsent on 2019/3/1.
//

import UIKit
import Foundation

extension UIColor {
    
    public func alpha(_ alpha: CGFloat) -> UIColor {
        return self.withAlphaComponent(alpha) 
    }
    
    public convenience init(_ rgbValue: UInt, _ alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}
