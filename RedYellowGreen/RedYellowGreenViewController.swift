//
//  ViewController.swift
//  RedYellowGreen
//
//  Created by Александра Лесовская on 01.03.2022.
//

import UIKit

class RedYellowGreenViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startNextButton: UIButton!
    
    // MARK: - Private Properties
    private var counterForButton = 1
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUserInterface()
    }
    
    // MARK: - IBActions
    @IBAction func startNextButtonPressed(_ sender: Any) {
        startNextButton.setTitle("NEXT", for: .normal)
        changeTheLight()
    }
    
    // MARK: - Private Methods
    private func setupUserInterface() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        startNextButton.layer.cornerRadius = 10
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    private func changeTheLight() {
        if counterForButton == 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            counterForButton += 1
        } else if counterForButton == 2 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            counterForButton += 1
        } else if counterForButton == 3 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            counterForButton = 1
        }
    }
    
}

