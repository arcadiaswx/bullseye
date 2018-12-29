//
//  ViewController.swift
//  BullsEye
//
//  Created by Craig on 12/28/18.
//  Copyright © 2018 Arcadia Softworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        var currentValue: Int = 0
        var targetValue: Int = 0
    
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var startOverButton: UIButton!
    @IBOutlet weak var scoreTextLabel: UILabel!
    @IBOutlet weak var scoreNumericValue: UILabel!
    @IBOutlet weak var roundNumberValue: UILabel!
    @IBOutlet weak var roundTextLabel: UILabel!
    @IBOutlet weak var randomTargetValue: UILabel!
    @IBOutlet weak var minSliderValue: UILabel!
    @IBOutlet weak var slider: UISlider!

    
    @IBOutlet weak var maxSliderValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        targetValue = Int.random(in: 1...100)
        randomTargetValue.text = String(targetValue)
        
    }
    @IBAction func showAlert(){
        let message = "The value of the slider is now: \(currentValue)" + " \n The target value is now: \(targetValue)"
        let alert = UIAlertController(title: "Hellow, World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        
    }
}

