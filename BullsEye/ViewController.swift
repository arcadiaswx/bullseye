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
    var roundValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var startOverButton: UIButton!
    @IBOutlet weak var scoreTextLabel: UILabel!
    @IBOutlet weak var scoreNumericValue: UILabel!
    @IBOutlet weak var roundNumberValue: UILabel!
    @IBOutlet weak var roundTextLabel: UILabel!

    @IBOutlet weak var minSliderValue: UILabel!
  

    
    @IBOutlet weak var maxSliderValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
        
        
    }
    @IBAction func showAlert(){
        
        var difference: Int
        if currentValue > targetValue {
            difference = currentValue - targetValue
        } else if targetValue > currentValue {
            difference = targetValue - currentValue
        } else {
            difference = 0
        }
        
        let message = "The value of the slider is now: \(currentValue)" +
        " \n The target value is: \(targetValue)" +
        " \n The difference is: \(difference)"
        
        let alert = UIAlertController(title: "Hellow, World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        updateLabels()
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)

        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
}

