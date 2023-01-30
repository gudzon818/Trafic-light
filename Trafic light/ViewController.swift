//
//  ViewController.swift
//  Traffic light
//
//  Created by user on 30.01.2023.
//

import UIKit

enum CurrentColor {
    case red, yellow, green
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redSection: UIView!
    @IBOutlet weak var yellowSection: UIView!
    @IBOutlet weak var greenSection: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var currentColor = CurrentColor.red
    private let colorOn: Double = 1
    private let colorOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        roundUpView()
        
        redSection.alpha = colorOff
        yellowSection.alpha = colorOff
        greenSection.alpha = colorOff
    }
    
    @IBAction func startButtonTapped() {
        startButton.setTitle("Next", for: .normal)
        
        switch currentColor {
        case .red :
            redSection.alpha = colorOn
            greenSection.alpha = colorOff
            currentColor = .yellow
        case .yellow:
            yellowSection.alpha = colorOn
            redSection.alpha = colorOff
            currentColor = .green
        case .green:
            greenSection.alpha = colorOn
            yellowSection.alpha = colorOff
            currentColor = .red
        }
    }
    
    private func roundUpView() {
        self.redSection.layer.cornerRadius = self.redSection.layer.bounds.height / 1.2
        redSection.clipsToBounds = true
        self.yellowSection.layer.cornerRadius = self.yellowSection.layer.bounds.height / 1.2
        yellowSection.clipsToBounds = true
        self.greenSection.layer.cornerRadius = self.greenSection.layer.bounds.height / 1.2
        greenSection.clipsToBounds = true
    }
}
