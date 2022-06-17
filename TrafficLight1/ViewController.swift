//
//  ViewController.swift
//  TrafficLight1
//
//  Created by Elena Kholodilina on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstLight: UIView!
    @IBOutlet var secondLight: UIView!
    @IBOutlet var thirdLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    var firstStart = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cornerRadius = firstLight.frame.size.height / 2
        
        firstLight.layer.cornerRadius = cornerRadius
        secondLight.layer.cornerRadius = cornerRadius
        thirdLight.layer.cornerRadius = cornerRadius
        startButton.layer.cornerRadius = 10
        
        firstLight.alpha = 0.2
        secondLight.alpha = 0.2
        thirdLight.alpha = 0.2
    }
    
    @IBAction func startButtonTapped() {
        if firstStart {
            firstStart = false
            startButton.setTitle("Next", for: .normal)
        }
        if firstLight.alpha == 1 {
            firstLight.alpha = 0.2
            secondLight.alpha = 1
        } else if secondLight.alpha == 1 {
            secondLight.alpha = 0.2
            thirdLight.alpha = 1
        } else {
            thirdLight.alpha = 0.2
            firstLight.alpha = 1
        }
    }
    
}

