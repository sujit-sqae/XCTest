//
//  CalculatorUITestsLaunchTests.swift
//  CalculatorUITests
//
//  Created by Sujit on 23/7/23.
//

import XCTest

class CalculatorAppPerformanceTests: XCTestCase {
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

    func testPerformanceAddition() {
            // Perform the addition operation multiple times and measure its performance
            measure(metrics: [XCTCPUMetric(), XCTMemoryMetric()]) {
                // Perform the addition operation multiple times
                for _ in 0..<5 {
                    // Example: Perform 2 + 3 =
                    app.buttons["2"].tap()
                    app.buttons["+"].tap()
                    app.buttons["3"].tap()
                    app.buttons["="].tap()
                    app.buttons["C"].tap() // Clear the result for the next iteration
                }
            }
    }
}
