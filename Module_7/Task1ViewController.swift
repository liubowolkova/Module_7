//
//  Task1ViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 11.12.2020.
//

import UIKit

class Task1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? Task1ColoredViewController {
            switch segue.identifier {
            case "ShowColoredGreen" :
                viewController.currentColor = UIColor.green
            case "ShowColoredBlue" :
                viewController.currentColor = UIColor.blue
            case "ShowColoredRed" :
                viewController.currentColor = UIColor.red
            default: break
            }
        }
    }
}
