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
    private let gameBoardSize: Size
    
    init(snakeLength: Int, gameBoardSize: Size) throws {
        if gameBoardSize.area <= snakeLength {
            throw Error.boardTooSmall
        }
        self.snakeLength = snakeLength
        self.gameBoardSize = gameBoardSize
    }
}

extension LaunchUseCase {
    
    func fetchSnake() -> Snake {
        return Snake(length: snakeLength, gameBoardSize: gameBoardSize)
    }
    
    func fetchBoard() -> GameBoard {
        return GameBoard(size: gameBoardSize)
    }
    
    func fetchFood(withoutBody body: [Point]) -> Point {
        var x: UInt
        var y: UInt
        repeat {
            x = (UInt(1) ..< gameBoardSize.width).randomElement() ?? 0
            y = (UInt(1) ..< gameBoardSize.height).randomElement() ?? 0
        } while (
            x != 0 && x >= gameBoardSize.width
            && y != 0 && y >= gameBoardSize.height
            && body.contains(.init(x: x, y: y))
        )
        return .init(x: x, y: y)
    }
}
