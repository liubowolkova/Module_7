//
//  Task1ViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 11.12.2020.
//

import UIKit

class Task1ViewController: UIViewController {
    var chosenColor = UIColor.darkGray
    var companionColor = UIColor.white
    @IBOutlet weak var buttonView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        buttonView.layer.cornerRadius = 10
    }

    @IBAction func showAnotherController(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            self.chosenColor = .green
            self.companionColor = .yellow
        case 1:
            self.chosenColor = .blue
            self.companionColor = .systemTeal
        case 2:
            self.chosenColor = .red
            self.companionColor = .orange
        default:
            break
        }
        if let vc = storyboard?.instantiateViewController(identifier: "ColoredView1") as? Task1ColoredViewController {
            vc.currentViewColor = self.chosenColor
            vc.currentIconColor = self.companionColor
            show(vc, sender: nil)
        }
    }
}
