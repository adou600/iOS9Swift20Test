//
//  FoodTrackerUITests.swift
//  FoodTrackerUITests
//
//  Created by Adrien Nicolet on 01.09.15.
//  Copyright © 2015 Adrien Nicolet. All rights reserved.
//

import XCTest

class FoodTrackerUITests: XCTestCase {
    
//    override init(){
//        super.init()
//    }
    
    var app: XCUIApplication!
    var homePage: MealTablePage!
    
    override func setUp() {
        super.setUp()
        
        app = XCUIApplication()
        homePage = MealTablePage(app: app)
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        //TODO: reset meals items... Try to access MealTableViewController ?
    }
    
    
    func testTypedMealNameIsDisplayedInNavigationBar() {
        // Tap Add button
        let newMealPage = homePage.goToNewMealPage()
        
        // Type the meal name
        newMealPage.typeMealName("fondue au fromage")
        
        // Navigation bar has the new entered meal name
        XCTAssertTrue(app.navigationBars["fondue au fromage"].exists)
    }
    
    func testCanDeleteAllMeals() {
        homePage.tapEdit()
        
        while homePage.countMealsInTable() > 0 {
            let mealsCount = homePage.countMealsInTable()
            homePage.deleteFirstMealInTable()
            XCTAssertEqual(mealsCount - 1, homePage.countMealsInTable())
        }
        
        homePage.tapDone()
        XCTAssertEqual(homePage.countMealsInTable(), 0)
    }
    
}
