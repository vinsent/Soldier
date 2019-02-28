//
//  Pixel.swift
//  Soldier
//
//  Created by vinsent on 2019/3/1.
//

public protocol Pixel {}

extension Pixel where Self: BinaryFloatingPoint {
    var px: Self {
        return self / Self(UIScreen.main.scale)
    }
}

extension CGFloat: Pixel {}
extension Double: Pixel {}
