//
//  Point.swift
//  Snake
//
//  Created by Ohlulu on 2021/3/28.
//

import Foundation

struct Point {
    let x: UInt
    let y: UInt
}

extension Point: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.x == rhs.y && lhs.x == rhs.y
    }
}
