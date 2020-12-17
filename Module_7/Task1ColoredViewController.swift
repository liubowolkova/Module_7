//
//  1Task1ColoredViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 11.12.2020.
//

import UIKit

class Task1ColoredViewController: UIViewController {
    @IBOutlet var mainView: UIView!
    var currentViewColor = UIColor.brown
    
    @IBOutlet weak var successIconImageView: UIImageView!
    var currentIconColor = UIColor.white
    
    override func viewDidLoad() {
        mainView.backgroundColor = currentViewColor
        successIconImageView.tintColor = currentIconColor
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.successIconImageView.isHidden = false
    }

}
