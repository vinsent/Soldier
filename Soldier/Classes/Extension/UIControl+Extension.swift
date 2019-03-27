//
//  UIControl+Extension.swift
//  Soldier
//
//  Created by vinsent on 2019/3/27.
//

import Foundation

private var AssociatedUIControlHandle: UInt8 = 0
private var AssociatedHighlightDisposableHandle: UInt8 = 0

extension UIControl {
    
    @objc public var hitTestEdgeInsets: UIEdgeInsets {
        get {
            let value: NSValue? = objc_getAssociatedObject(self, &AssociatedUIControlHandle) as? NSValue
            if value != nil {
                return value!.uiEdgeInsetsValue
            }
            return UIEdgeInsets.zero
        }
        set {
            let value = NSValue(uiEdgeInsets: newValue)
            objc_setAssociatedObject(self, &AssociatedUIControlHandle, value, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    override open func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if hitTestEdgeInsets == .zero || !isEnabled || isHidden {
            return super.point(inside: point, with: event)
        }
        let relativeFrame: CGRect = bounds
        let hitFrame: CGRect = relativeFrame.inset(by: hitTestEdgeInsets)
        return hitFrame.contains(point)
    }
}
