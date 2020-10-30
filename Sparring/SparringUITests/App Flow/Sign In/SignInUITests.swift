//
//  SparringUITests.swift
//  SparringUITests
//
//  Created by Wojciech Kulas on 22/10/2020.
//

import XCTest

class SignInUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUpWithError() throws {
        app = XCUIApplication()
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        app = nil
    }

    func testCreateAccountButton_onTap_goToCreateAccountView() throws {
        // given
        let createAccountButton = app.buttons["Create an account"]
        let helloStaticText = app.staticTexts["Hello"]
        
        // when
        app.launch()
        createAccountButton.tap()
        
        // then
        XCTAssert(helloStaticText.waitForExistence(timeout: 5))
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
