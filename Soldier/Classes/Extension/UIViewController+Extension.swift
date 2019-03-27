//
//  UIViewController+Extension.swift
//  Soldier
//
//  Created by vinsent on 2019/3/27.
//

import Foundation

extension UIViewController {
    
    var safeAreaTopLayoutLength: CGFloat {
        if #available(iOS 11.0, *) {
            return view.safeAreaInsets.top
        } else {
            return topLayoutGuide.length
        }
    }
    
    var safeAreaBottomLayoutLength: CGFloat {
        if #available(iOS 11.0, *) {
            return view.safeAreaInsets.bottom
        } else {
            return bottomLayoutGuide.length
        }
    }
}
