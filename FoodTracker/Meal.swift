//
//  Meal.swift
//  FoodTracker
//
//  Created by Adrien Nicolet on 02.09.15.
//  Copyright © 2015 Adrien Nicolet. All rights reserved.
//

import UIKit


class Meal {
    
    // MARK: properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: init
    
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
    

}
