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

private class TapGestureRecognizer: UITapGestureRecognizer {
    public var tapCallback: (() -> Void)?
}

extension UIView {
    
    @objc public func whenTapped(callback: @escaping (() -> Void)) {
        let tap = TapGestureRecognizer(target: self, action: #selector(tapped(_:)))
        tap.tapCallback = callback
        isUserInteractionEnabled = true
        addGestureRecognizer(tap)
    }
    
    @objc private func tapped(_ tap: TapGestureRecognizer) {
        tap.tapCallback?()
    }
}
