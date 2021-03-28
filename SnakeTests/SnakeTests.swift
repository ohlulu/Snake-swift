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
        let sut = LaunchUseCase()
        let (snake, _) = sut.fecthEnv(
            snakeLength: 10,
            gamebaordSize: Size(width: 10, height: 10)
        )
        XCTAssertEqual(snake.body.count, 10)
    }
}
