//
//  BackgroundViewController.swift
//  SlidersRGB
//
//  Created by Дмитрий Федоров on 12.04.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setColor(for color: UIColor)
}

final class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewContoller else {
            return
        }
        settingsVC.delegate = self
        settingsVC.viewColor = view.backgroundColor
    }
    
}

//MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setColor(for color: UIColor) {
        view.backgroundColor = color
    }
}
