//
//  MealPage.swift
//  FoodTracker
//
//  Created by Adrien Nicolet on 02.09.15.
//  Copyright © 2015 Adrien Nicolet. All rights reserved.
//

import Foundation
import XCTest

class MealPage {
    
    var app: XCUIApplication
    
    init(app: XCUIApplication){
        self.app = app
    }
    
    func typeMealName(mealName: String) {
        let enterMealNameTextField = app.textFields.elementBoundByIndex(0)
        enterMealNameTextField.tap()
        enterMealNameTextField.typeText(mealName)
        app.typeText("\n")
    }
    
}