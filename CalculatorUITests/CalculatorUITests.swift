//
//  CalculatorUITests.swift
//  CalculatorUITests
//
//  Created by Sujit on 23/7/23.
//

import XCTest

class CalculatorAppTests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        
        // Launch the app
        app = XCUIApplication()
        app.launch()
    }

    override func tearDown() {
        // Quit the app
        app.terminate()
        
        super.tearDown()
    }

    func testAddition() {
        // Tap the number buttons
        app.buttons["2"].tap()
        app.buttons["+"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        
        // Verify the result label
        let resultLabel = app.staticTexts["5"]
        XCTAssertEqual(resultLabel.label, "5")
    }

    func testSubtraction() {
        // Tap the number buttons
        app.buttons["5"].tap()
        app.buttons["−"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()

        // Verify the result label
        let resultLabel = app.staticTexts["2"]
        XCTAssertEqual(resultLabel.label, "2")
    }

    func testMultiplication() {
        // Tap the number buttons
        app.buttons["4"].tap()
        app.buttons["×"].tap()
        app.buttons["2"].tap()
        app.buttons["="].tap()

        // Verify the result label
        let resultLabel = app.staticTexts["8"]
        XCTAssertEqual(resultLabel.label, "8")
    }

    func testDivision() {
        // Tap the number buttons
        app.buttons["8"].tap()
        app.buttons["÷"].tap()
        app.buttons["4"].tap()
        app.buttons["="].tap()

        // Verify the result label
        let resultLabel = app.staticTexts["2"]
        XCTAssertEqual(resultLabel.label, "2")
    }
}
