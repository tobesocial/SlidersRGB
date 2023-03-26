//
//  ViewController.swift
//  SlidersRGB
//
//  Created by Дмитрий Федоров on 26.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction private func choosingRedColor() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: 0,
            blue: 0,
            alpha: 1)
    }
    
    @IBAction private func сhoosingGreenColor() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }

    @IBAction private func choosingBlueColor() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }

}

