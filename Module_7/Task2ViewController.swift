//
//  Task2ViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 18.12.2020.
//

import UIKit

class Task2ViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    var textColor = "blue"
    var backgroundColor = UIColor.green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.infoLabel.text = "Выбран \(textColor)"
    }
    
    @IBAction func showNextCntroller(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "ChooseController") as? ChooseViewController {
            print("this \(self.textColor)")
        vc.text = self.textColor
        print("in func")
        show(vc, sender: nil)
        }
    }
}
