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

    var rating = 0 {
        
        didSet {
            
            setNeedsLayout()
            
        }
        
    }
    
    var ratingButtons = [UIButton]()
    
    let spacing = 5
    
    let starCount = 5

    //MARK: Initialization
    
    override func layoutSubviews() {
        
        // Set the button's width and height to a square the size of the frame's height.
        let buttonSize = Int(frame.size.height)
        
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        //offset each button's origin by the lenght of the button plus spacing
        for(index, button) in ratingButtons.enumerated() {
            
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
            
        }
        updateButtonSelectionStates()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        let filledStarImage = #imageLiteral(resourceName: "Filled Star")
        let emptyStarImage = #imageLiteral(resourceName: "Empty Star")
        
        for _ in 0..<starCount {
        //create a red button
        let button = UIButton()
        
        button.setImage(emptyStarImage, for: .normal)
        button.setImage(filledStarImage, for: .selected)
        button.setImage(filledStarImage, for: [.highlighted, .selected])
        
        button.adjustsImageWhenHighlighted = false
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
        
        ratingButtons += [button]
        addSubview(button)
            
        }
    }
    
    override public var intrinsicContentSize: CGSize {
        get {
        let buttonSize = Int(frame.size.height)
            
        let width = (buttonSize * starCount) + (spacing * (starCount - 1))
        
        return CGSize(width: width, height: 44)
        }
    }
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton){
        
        rating = ratingButtons.index(of: button)! + 1
        
        updateButtonSelectionStates()
        
    }
    
    func updateButtonSelectionStates() {
        
        for (index, button) in ratingButtons.enumerated() {
            
            // If the index of a button is less than the rating, that button should be selected.
            button.isSelected = index < rating
            
        }
        
    }
    
}

