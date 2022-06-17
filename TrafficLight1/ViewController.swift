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
        firstLight.layer.cornerRadius = 90
        secondLight.layer.cornerRadius = 90
        thirdLight.layer.cornerRadius = 90
        startButton.layer.cornerRadius = 10
        firstLight.alpha = 0.2
        secondLight.alpha = 0.2
        thirdLight.alpha = 0.2
    }
    
    @IBAction func startButtonTapped() {
        if firstStart {
            firstStart = false
            startButton.setTitle("Next", for: .normal)
            firstLight.alpha = 1
        }
    }
    
}

