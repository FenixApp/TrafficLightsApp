//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by Dmitriy Starozhilov on 02.03.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redSignal: UIView!
    @IBOutlet var yellowSignal: UIView!
    @IBOutlet var greenSignal: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let signalIsOn: CGFloat = 1
    private let signalIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        
        redSignal.alpha = signalIsOff
        yellowSignal.alpha = signalIsOff
        greenSignal.alpha = signalIsOff
    }
    
    override func viewDidLayoutSubviews() {
    redSignal.layer.cornerRadius = redSignal.frame.height / 2
    yellowSignal.layer.cornerRadius = yellowSignal.frame.height / 2
    greenSignal.layer.cornerRadius = greenSignal.frame.height / 2
    }

    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenSignal.alpha = signalIsOff
            redSignal.alpha = signalIsOn
            currentLight = .yellow
        case .yellow:
            redSignal.alpha = signalIsOff
            yellowSignal.alpha = signalIsOn
            currentLight = .green
        case .green:
            yellowSignal.alpha = signalIsOff
            greenSignal.alpha = signalIsOn
            currentLight = .red
        }
    }
}

