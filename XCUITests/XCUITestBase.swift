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
}
