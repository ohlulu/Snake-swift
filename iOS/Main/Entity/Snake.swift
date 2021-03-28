//
//  Snake.swift
//  Snake
//
//  Created by Ohlulu on 2021/3/28.
//

import Foundation

final class Snake {
    
    var body: [Point] = []
    
    init(length: Int, gamebaordSize: Size) {
        while body.count != length {
            let x = (1..<gamebaordSize.width).randomElement() ?? 1
            let y = (1..<gamebaordSize.height).randomElement() ?? 1
            let point = Point(x: x, y: y)
            if !body.contains(point) {
                body.append(point)
            }
        }
    }
}
