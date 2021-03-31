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
    
    func fecthFood(withoutBody body: [Point]) -> Point {
        var x: UInt
        var y: UInt
        repeat {
            x = (UInt(1) ..< gamebaordSize.width).randomElement() ?? 0
            y = (UInt(1) ..< gamebaordSize.height).randomElement() ?? 0
        } while (
            x != 0 && x >= gamebaordSize.width
            && y != 0 && y >= gamebaordSize.height
            && body.contains(.init(x: x, y: y))
        )
        return .init(x: x, y: y)
    }
}
