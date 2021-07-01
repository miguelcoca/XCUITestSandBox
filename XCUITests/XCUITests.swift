//
//  XCUITests.swift
//  XCUITests
//
//  Created by Miguel Angel Coca S on 23/6/21.
//  Copyright © 2021 NoName00.com. All rights reserved.
//

import XCTest

class XCUITests: VolleyXCUITestBase {

    func testExample() throws {
        
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Manage Team"]/*[[".cells.staticTexts[\"Manage Team\"]",".staticTexts[\"Manage Team\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
                
        //set focus on Team Name Input
        let inputTeamName = app.textFields["Team Name"]
        inputTeamName.tap()
        inputTeamName.typeText(team1.teamName)
        
        //Hide On Screen Keyboard
        super.hideKeyboard()
        //app.keyboards.buttons["Done"].tap()

        //set Skill Level at 7
        let slider = app.sliders["30%"]
        slider.tap()
        slider.adjust(toNormalizedSliderPosition: team1.skillLevel)
        
        //set Attackers Formation to 6 attackers
        let attackersFormationPickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["Attackers Formation"]/*[[".pickers.pickerWheels[\"Attackers Formation\"]",".pickerWheels[\"Attackers Formation\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        attackersFormationPickerWheel.adjust(toPickerWheelValue: team1.attackers)
        
        //set Setters Formation to 2
        let settersFormationPickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["Setters Formation"]/*[[".pickers.pickerWheels[\"Setters Formation\"]",".pickerWheels[\"Setters Formation\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        settersFormationPickerWheel.swipeUp()
        
        app.navigationBars["Manage Team"].buttons["Back"].tap()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
