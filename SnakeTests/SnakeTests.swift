//
//  SnakeTests.swift
//  SnakeTests
//
//  Created by Ohlulu on 2021/3/28.
//

@testable import Snake
import XCTest

class SnakeTests: XCTestCase {

    func test_whenLaunch_snakeLengthCorrect() throws {
        let sut = LaunchUseCase(snakeLength: 10, gamebaordSize: .init(width: 10, height: 10))
        let snake = sut.fecthSnake()
        XCTAssertEqual(snake.body.count, 10)
    }
}
