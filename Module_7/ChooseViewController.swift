//
//  ChooseViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 18.12.2020.
//

import UIKit

protocol ChooseViewDelegate {
    func setBackground(backgroundColor: UIColor, text: String)
}

class ChooseViewController: UIViewController {
    @IBOutlet weak var infoTextField: UITextField!
    var text = "green"
    var delegate: ChooseViewDelegate?
    var color = UIColor.green
    var sendedText = "green"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTextField.placeholder = "Выбран \(text)"
    }
    
    @IBAction func chooseAndReturn(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            self.color = .green
            self.sendedText = "зелёный"
        case 1:
            self.color = .blue
            self.sendedText = "синий"
        case 2:
            self.color = .red
            self.sendedText = "красный"
        default:
            break
        }
        
        delegate?.setBackground(backgroundColor: self.color, text: self.sendedText)
    }
}
