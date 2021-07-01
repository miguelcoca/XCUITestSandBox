//
//  BDDVolleyFeatureSteps.swift
//  XCUITests
//
//  Created by Miguel Angel Coca S on 1/7/21.
//  Copyright © 2021 NoName00.com. All rights reserved.
//

import Foundation
import XCTest

extension BDDVolleyFeature{
    func  GivenUserSelectsManageTeamMenuOpcion(){
        XCTContext.runActivity(named: "Given User Selects Manage Team Menu Option"){_ in
            app.tables/*@START_MENU_TOKEN@*/.staticTexts["Manage Team"]/*[[".cells.staticTexts[\"Manage Team\"]",".staticTexts[\"Manage Team\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        }
    }
    
    func WhenUserTypesNewTeamNameTo(teamName: String){
        XCTContext.runActivity(named: "When User Types New Team Name To \(teamName)"){_ in
            //set focus on Team Name Input
            let inputTeamName = app.textFields["Team Name"]
            inputTeamName.tap()
            inputTeamName.typeText(team1.teamName)
            
            //Hide On Screen Keyboard
            super.hideKeyboard()
            //app.keyboards.buttons["Done"].tap()
        }
    }
    
    func AndUserSetsTheTeamSkillLevelTo(skillLevel: Double){
        XCTContext.runActivity(named: "And User Sets The Team Skill Level To \(skillLevel)"){_ in
            //set Skill Level at 7
            let slider = app.sliders["30%"]
            slider.tap()
            slider.adjust(toNormalizedSliderPosition: team1.skillLevel)
            
        }
    }
    
    func AndUserSetsAttackersFormationTo(attackers: String){
        XCTContext.runActivity(named: "And User Sets Attackers Formation To \(attackers)"){_ in
        //set Attackers Formation to 6 attackers
        let attackersFormationPickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["Attackers Formation"]/*[[".pickers.pickerWheels[\"Attackers Formation\"]",".pickerWheels[\"Attackers Formation\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        attackersFormationPickerWheel.adjust(toPickerWheelValue: team1.attackers)
        }
    }
    
    func AndUserSetsSettersFormationto(setters: String){
        XCTContext.runActivity(named: "And User Sets Setters Formation to \(setters)"){_ in
        //set Setters Formation to 2
        let settersFormationPickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["Setters Formation"]/*[[".pickers.pickerWheels[\"Setters Formation\"]",".pickerWheels[\"Setters Formation\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            settersFormationPickerWheel.swipeUp()}
    }
    
    func ThenIshouldbeAbleToNavigateBack(){
        XCTContext.runActivity(named: "Then Ishould be Able To Navigate Back") {_ in
            app.navigationBars["Manage Team"].buttons["Back"].tap()}
    }
}
