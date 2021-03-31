//
//  SnakeTests.swift
//  SnakeTests
//
//  Created by Ohlulu on 2021/3/28.
//

@testable import Snake
import XCTest

class SnakeTests: XCTestCase {
    
    func test_whenBoardLargeThenSnakeBody_shouldNotError() throws {
        _ = try LaunchUseCase(snakeLength: 10, gameBoardSize: .init(width: 10, height: 10))
    }
    
    func test_whenBoardLessThenSnakeBody_shouldNotError() throws {
        XCTAssertThrowsError(try LaunchUseCase(snakeLength: 101, gameBoardSize: .init(width: 10, height: 10)))
    }


    func test_fetchSnake_snakeLengthCorrect() throws {
        let sut = try LaunchUseCase(snakeLength: 10, gameBoardSize: .init(width: 10, height: 10))
        let snake = sut.fetchSnake()
        XCTAssertEqual(snake.body.count, 10)
    }
    
    func test_fetchFood_shouldNotInSnakeBoardOrOutOfBoard() throws {
        let sut = try LaunchUseCase(snakeLength: 10, gameBoardSize: .init(width: 10, height: 10))
        let board = sut.fetchBoard()
        let snake = sut.fetchSnake()
        let food = sut.fetchFood(withoutBody: snake.body)
        
        XCTAssertLessThan(food.x, board.size.width)
        XCTAssertLessThan(food.y, board.size.height)
        
        XCTAssertGreaterThan(food.x, 0)
        XCTAssertGreaterThan(food.y, 0)
    }
}
