//
//  ViewController.swift
//  TrafficLight1
//
//  Created by Elena Kholodilina on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLight.layer.cornerRadius = 63
        
    }


}

