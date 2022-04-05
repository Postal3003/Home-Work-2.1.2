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
    
    // методы переопределения, айби экшаны, публичные методы класса, приватные методы
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

