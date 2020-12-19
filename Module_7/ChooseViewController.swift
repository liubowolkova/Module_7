//
//  ChooseViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 18.12.2020.
//

import UIKit

class ChooseViewController: UIViewController {
    @IBOutlet weak var infoTextField: UITextField!
    var text = "green"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("did load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("willAppear")
        infoTextField.placeholder = "Выбран \(text)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("new: \(text)")
    }
    
    @IBAction func chooseAndReturn(_ sender: UIButton) {
        
    }
}
