//
//  ViewController.swift
//  What's For Dinner
//
//  Created by John Gallaugher on 2/5/18.
//  Copyright © 2018 John Gallaugher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dinnerImageView: UIImageView!
    @IBOutlet weak var dinnerMessage: UILabel!
    var lastMeal = -1 // a class-wide variable, or a property of the ViewController.swift class. Since it was defined within the class curlies, even with the functions, it's available to "ALL" functions and will hold its value, even after it has been updated inside of a function.
    
    let choicesArray = ["Burrito",
                        "Cobb Salad",
                        "Pepperoni Pizza",
                        "Sushi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func dinnerButtonPressed(_ sender: UIButton) {
        
        var selectedMeal = Int(arc4random_uniform(UInt32(choicesArray.count)))
        
        while selectedMeal == lastMeal {
            // Generate a new random Int for selectedMeal...
            selectedMeal = Int(arc4random_uniform(UInt32(choicesArray.count)))
        }
        
        dinnerImageView.image = UIImage(named: choicesArray[selectedMeal])
        dinnerMessage.text = choicesArray[selectedMeal]
        lastMeal = selectedMeal // Remember the lastMeal in the global var
        
        // Original answer, that could show repeats each time clicked, is commented out, below:
//        let selectedMeal = Int(arc4random_uniform(UInt32(choicesArray.count)))
//        let choice = choicesArray[selectedMeal]
//        dinnerMessage.text = choice
//        dinnerImageView.image = UIImage(named: choice)
    }
    

}

