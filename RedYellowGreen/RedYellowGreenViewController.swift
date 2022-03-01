//
//  ViewController.swift
//  RedYellowGreen
//
//  Created by Александра Лесовская on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startNextButton: UIButton!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUserInterface()
    }
    
    

    // MARK: - IBActions
    @IBAction func startNextButtonPressed(_ sender: Any) {
        startNextButton.setTitle("NEXT", for: .normal)
    }
    
    // MARK: - Private Methods
    private func setupUserInterface() {
        redLightView.layer.cornerRadius = 80
        yellowLightView.layer.cornerRadius = 80
        greenLightView.layer.cornerRadius = 80
        startNextButton.layer.cornerRadius = 10
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    
}

