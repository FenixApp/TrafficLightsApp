//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by Dmitriy Starozhilov on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSignal: UIView!
    @IBOutlet var yellowSignal: UIView!
    @IBOutlet var greenSignal: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSignal.layer.cornerRadius = 75
        yellowSignal.layer.cornerRadius = 75
        greenSignal.layer.cornerRadius = 75
        
        redSignal.alpha = 0.3
        
        startButton.layer.cornerRadius = 15
    }

    @IBAction func startButtonPressed() {
        
    }
    
}

