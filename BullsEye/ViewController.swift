//
//  ViewController.swift
//  BullsEye
//
//  Created by Craig on 12/28/18.
//  Copyright © 2018 Arcadia Softworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var startOverButton: UIButton!
    @IBOutlet weak var scoreTextLabel: UILabel!
    @IBOutlet weak var scoreNumericValue: UILabel!
    @IBOutlet weak var roundNumberValue: UILabel!
    @IBOutlet weak var roundTextLabel: UILabel!
    @IBOutlet weak var randomTargetValue: UILabel!
    
    @IBOutlet weak var minSliderValue: UILabel!
    
    
    @IBOutlet weak var maxSliderValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showAlert(){
        //print("Hello!")
        let alert = UIAlertController(title: "Hellow, World!", message: "This is my first app.", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }


}

