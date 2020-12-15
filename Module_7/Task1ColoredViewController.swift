//
//  1Task1ColoredViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 11.12.2020.
//

import UIKit

class Task1ColoredViewController: UIViewController {
    var currentColor = UIColor.yellow
    @IBOutlet var mainView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        mainView.backgroundColor = currentColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
