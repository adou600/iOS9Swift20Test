//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Adrien Nicolet on 01.09.15.
//  Copyright © 2015 Adrien Nicolet. All rights reserved.
//

import XCTest
@testable import FoodTracker

class MealTests: XCTestCase {
    
    func testMealSuccessfulInitialization() {
        let potentialItem = Meal(name: "A new meal", photo: nil, rating: 5)!
        XCTAssertNotNil(potentialItem)
        XCTAssertEqual(potentialItem.name, "A new meal")
    }
    
    func testMealFailedInitializationWithBadName() {
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
    }
    
    func testMealFailedInitializationWithBadRating() {
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative rating are invalid")
    }
    
}
