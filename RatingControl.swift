//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Adrien Nicolet on 01.09.15.
//  Copyright © 2015 Adrien Nicolet. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
        addSubview(button)
    }
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }

}
