//
//  Then.swift
//  Soldier
//
//  Created by vinsent on 2019/3/1.
//

import Foundation

public protocol Then {}

extension Then where Self: AnyObject {
    
    public func then(_ block: (Self) throws -> Void) rethrows -> Self {
        try block(self)
        return self
    }
    
}

extension NSObject: Then {}
