//
//  ViewController.swift
//  FoodTracker
//
//  Created by Puneet Singh Bagga on 2016-10-25.
//  Copyright © 2016 Puneet Singh Bagga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }

}

