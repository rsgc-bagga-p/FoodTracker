//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Puneet Singh Bagga on 2016-11-04.
//  Copyright © 2016 Puneet Singh Bagga. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    //MARK: Properties

    

    //MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        
        //create a red button
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        
        button.backgroundColor = UIColor.red
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
        
            
        addSubview(button)
    }
    
    override public var intrinsicContentSize: CGSize {
        
        get{
            //return intrinsic content size for the stack view
            return CGSize(width: 240, height: 44)
            
        }
        
    }
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton){
        
        print("Button Pressed 👍🏾")
        
    }
    
}

