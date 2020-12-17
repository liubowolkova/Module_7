//
//  Task1ViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 11.12.2020.
//

import UIKit

class Task1ViewController: UIViewController {
    var myColor = UIColor.darkGray
    
    func getBackground() -> UIColor {
        return self.myColor
    }

    @IBAction func showAnotherController(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            self.myColor = .green
        case 1:
            self.myColor = .blue
        case 2:
            self.myColor = .red
        default:
            break
        }
        if let vc = storyboard?.instantiateViewController(identifier: "ColoredView1") as? Task1ColoredViewController {
            vc.currentColor = self.myColor
            show(vc, sender: nil)
            //vc.setBackground(self.getBackground())
        }
        // не работает, почему-то не открывает новый вью вовсе
    }
}
