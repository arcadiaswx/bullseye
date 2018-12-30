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
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!

    // Buttons
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var startOverButton: UIButton!
    
    @IBOutlet weak var minSliderValue: UILabel!
    @IBOutlet weak var maxSliderValue: UILabel!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)

        print("The current value is: \(currentValue)")
        print("The current round is: \(round)")
        startNewGame()
        
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = #imageLiteral(resourceName: "SliderTrackLeft")
        let trackLeftResizable = trackLeftImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftResizable, for: .normal)
        
        let trackRightImage = #imageLiteral(resourceName: "SmallButton")
        let trackRightResizable = trackRightImage.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(trackRightResizable, for: .normal)
    }
    @IBAction func showAlert(){
        
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference
        
        score += points
        
        let title: String
        
        if difference == 0 {
            title = "Perfect!"
            points += 100
        }else if difference == 1 {
            title = "So close!"
            points += 50
        } else if ((difference > 1) && (difference < 5)) {
            title = "You almost had it!"
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
        
        let message = "You scored \(points) points."
        
        let alert = UIAlertController(title: title , message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.startNewRound()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        updateLabels()
    }
    
    func startNewRound() {
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)

        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    @IBAction func startNewGame() {
        round = 0
        score = 0
        startNewRound()
    }
}

