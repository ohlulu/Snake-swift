//
//  SnakeTests.swift
//  SnakeTests
//
//  Created by Ohlulu on 2021/3/28.
//

@testable import Snake
import XCTest

class SnakeTests: XCTestCase {
    
    func test_whenBoardLargeThenSnakeBody_shouleNotError() throws {
        _ = try LaunchUseCase(snakeLength: 10, gamebaordSize: .init(width: 10, height: 10))
    }
    
    func test_whenBoardLessThenSnakeBody_shouleNotError() throws {
        XCTAssertThrowsError(try LaunchUseCase(snakeLength: 101, gamebaordSize: .init(width: 10, height: 10)))
    }


    func test_whenLaunch_snakeLengthCorrect() throws {
        let sut = try LaunchUseCase(snakeLength: 10, gamebaordSize: .init(width: 10, height: 10))
        let snake = sut.fecthSnake()
        XCTAssertEqual(snake.body.count, 10)
    }
    
    func test_fetechFood_shouldNotInSnakeBaodOrOutOfBoard() throws {
        let sut = try LaunchUseCase(snakeLength: 10, gamebaordSize: .init(width: 10, height: 10))
        let board = sut.fecthBoard()
        let snake = sut.fecthSnake()
        let food = sut.fecthFood(withoutBody: snake.body)
        
        XCTAssertLessThan(food.x, board.size.width)
        XCTAssertLessThan(food.y, board.size.height)
        
        XCTAssertGreaterThan(food.x, 0)
        XCTAssertGreaterThan(food.y, 0)
    }
}
