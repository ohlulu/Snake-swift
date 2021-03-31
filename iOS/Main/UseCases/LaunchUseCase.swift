//
//  LaunchUseCase.swift
//  Snake
//
//  Created by Ohlulu on 2021/3/28.
//

import Foundation

final class LaunchUseCase {
    
    enum Error: Swift.Error {
        case boardTooSmall
    }
    
    private let snakeLength: Int
    private let gamebaordSize: Size
    
    init(snakeLength: Int, gamebaordSize: Size) throws {
        if gamebaordSize.area <= snakeLength {
            throw Error.boardTooSmall
        }
        self.snakeLength = snakeLength
        self.gamebaordSize = gamebaordSize
    }
}

extension LaunchUseCase {
    
    func fecthSnake() -> Snake {
        return Snake(length: snakeLength, gamebaordSize: gamebaordSize)
    }
    
    func fecthBoard() -> GameBoard {
        return GameBoard(size: gamebaordSize)
    }
}
