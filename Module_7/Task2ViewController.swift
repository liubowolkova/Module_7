//
//  Task2ViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 18.12.2020.
//

import UIKit

class Task2ViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    var textColor = "зелёный" {
        didSet {
            self.infoLabel.text = "Выбран \(self.textColor)"
        }
    }
    var backgroundColor = UIColor.green {
        didSet {
            self.view.backgroundColor = self.backgroundColor
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.infoLabel.text = "Выбран \(self.textColor)"
        self.view.backgroundColor = self.backgroundColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ChooseViewController, segue.identifier == "segueViewChooseController" else { return }
        vc.text = self.textColor
        vc.delegate = self
    }
}

extension Task2ViewController: ChooseViewDelegate {
    func setBackground(backgroundColor: UIColor, text: String) {
        self.backgroundColor = backgroundColor
        self.textColor = text
    }
}
