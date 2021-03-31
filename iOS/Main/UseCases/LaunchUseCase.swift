//
//  LaunchUseCase.swift
//  Snake
//
//  Created by Ohlulu on 2021/3/28.
//

import Foundation

final class LaunchUseCase {
    
    private let snakeLength: Int
    private let gamebaordSize: Size
    
    init(snakeLength: Int, gamebaordSize: Size) {
        self.snakeLength = snakeLength
        self.gamebaordSize = gamebaordSize
    }
}

extension LaunchUseCase {
    
    func fecthSnake() -> Snake {
        return Snake(length: snakeLength, gamebaordSize: gamebaordSize)
    }
}
