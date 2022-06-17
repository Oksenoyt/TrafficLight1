//
//  ViewController.swift
//  TrafficLight1
//
//  Created by Elena Kholodilina on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    var activeLight = "none"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cornerRadius = redLight.frame.size.height / 2
        
        redLight.layer.cornerRadius = cornerRadius
        yellowLight.layer.cornerRadius = cornerRadius
        greenLight.layer.cornerRadius = cornerRadius
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.2
        yellowLight.alpha = 0.2
        greenLight.alpha = 0.2
    }
    
    @IBAction func startButtonTapped() {
        switch activeLight {
        case "red":
            redLight.alpha = 0.2
            yellowLight.alpha = 1
            activeLight = "yellow"
        case "yellow":
            yellowLight.alpha = 0.2
            greenLight.alpha = 1
            activeLight = "green"
        case "green":
            greenLight.alpha = 0.2
            redLight.alpha = 1
            activeLight = "red"
        default:
            activeLight = "red"
            redLight.alpha = 1
            startButton.setTitle("Next", for: .normal)
        }
    }
    
}

