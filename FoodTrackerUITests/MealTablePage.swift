//
//  MealTablePage.swift
//  FoodTracker
//
//  Created by Adrien Nicolet on 02.09.15.
//  Copyright © 2015 Adrien Nicolet. All rights reserved.
//

import Foundation
import XCTest

class MealTablePage {
    
    var app: XCUIApplication
    var mealPage: MealPage!
    
    init(app: XCUIApplication){
        self.app = app
        self.mealPage = MealPage(app: app)
    }
    
    func goToNewMealPage() -> MealPage {
        app.navigationBars.elementBoundByIndex(0).buttons["Add"].tap()
        return mealPage
    }
    
    func tapEdit() {
        app.navigationBars.elementBoundByIndex(0).buttons["Edit"].tap()
        XCTAssertTrue(app.navigationBars.elementBoundByIndex(0).buttons["Done"].exists)
    }
    
    func tapDone() {
        app.navigationBars.elementBoundByIndex(0).buttons["Done"].tap()
        XCTAssertTrue(app.navigationBars.elementBoundByIndex(0).buttons["Edit"].exists)
    }
    
    func countMealsInTable() -> UInt {
        return app.tables.cells.count
    }
    
    func deleteFirstMealInTable() {
        let tablesQuery = app.tables
        tablesQuery.buttons.elementBoundByIndex(0).tap()
        tablesQuery.buttons["Delete"].tap()
    }
    
}