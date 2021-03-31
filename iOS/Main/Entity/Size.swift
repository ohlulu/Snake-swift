//
//  Size.swift
//  Snake
//
//  Created by Ohlulu on 2021/3/28.
//

import Foundation

struct Size {
    let width: UInt
    let height: UInt
}

extension Size {
    
    var area: UInt {
        width * height
    }
}
