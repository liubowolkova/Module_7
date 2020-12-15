//
//  InnerViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 11.12.2020.
//

import UIKit

class InnerViewController: UIViewController {
    @IBOutlet var innerView: UIView!
    var currentColor = UIColor.white {
        didSet { innerView.backgroundColor = currentColor }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        innerView.backgroundColor = currentColor
    }
}
