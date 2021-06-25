//
//  XCUITestBase.swift
//  XCUITests
//
//  Created by Miguel Angel Coca S on 23/6/21.
//  Copyright © 2021 NoName00.com. All rights reserved.
//

import Foundation
import XCTest

class VolleyXCUITestBase: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        app.launch()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app.terminate()
    }
    
    enum ElementState { case visible, invisible }
    
    func waitFor(_ element: XCUIElement, toBe state: ElementState, secondsToWait: Double=10) -> Bool {
        let predicate = NSPredicate(format: "exists == \(state == .visible)")
        let elementExpectation = expectation(for: predicate, evaluatedWith: element, handler: nil)
        let result = XCTWaiter().wait(for: [elementExpectation], timeout: secondsToWait)
        return result == .completed
    }
    
    func hideKeyboard(){
        let doneButton = XCUIApplication().buttons["Done"]
        if waitFor(doneButton, toBe: .visible, secondsToWait: 5) {
            doneButton.tap()
        }
    }
}
