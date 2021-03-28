//
//  LaunchUseCase.swift
//  Snake
//
//  Created by Ohlulu on 2021/3/28.
//

import Foundation

final class LaunchUseCase {
    
}

extension LaunchUseCase {
    
    func fecthEnv(snakeLength: Int, gamebaordSize: Size) -> (Snake, GameBoard) {
        let snake = Snake(length: snakeLength, gamebaordSize: gamebaordSize)
        let gameBoard = GameBoard()
        return (snake, gameBoard)
    }
}
