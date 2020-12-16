//
//  1Task1ColoredViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 11.12.2020.
//

import UIKit

class Task1ColoredViewController: UIViewController {
    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        self.setBackground(.yellow)
    }
    
    func setBackground(_ color: UIColor) {
        mainView.backgroundColor = color
    }
}
