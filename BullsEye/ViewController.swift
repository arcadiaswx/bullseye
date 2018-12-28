//
//  ViewController.swift
//  BullsEye
//
//  Created by Craig on 12/28/18.
//  Copyright © 2018 Arcadia Softworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

