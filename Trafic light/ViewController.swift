//
//  ViewController.swift
//  Traffic light
//
//  Created by user on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSection: UIView!
    @IBOutlet weak var yellowSection: UIView!
    @IBOutlet weak var greenSection: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       roundUpView()
    }

    @IBAction func startButtonTapped() {
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

