//
//  ViewController.swift
//  Home Work 2.1.2
//
//  Created by Дмитрий Бородулькин on 05.04.2022.
//

import UIKit

// Свойства - аутлеты, пуб свойства, приватные, инициализаторы

enum CurrentLight {             // текущий свет
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.4
    
    // методы переопределения, айби экшаны, публичные методы класса, приватные методы
    
    override func viewDidLoad() { //настройка нашего интерфейса
        super.viewDidLoad()
    
        startButton.layer.cornerRadius = 10 //скругление кнопки
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
    }
    override func viewWillLayoutSubviews() { //скругление квадратов
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
    }
    

}

