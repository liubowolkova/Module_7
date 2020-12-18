//
//  NestedViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 11.12.2020.
//

import UIKit

class NestedViewController: UIViewController {
    var currentColor = UIColor.black
    var innerCurrentColor = UIColor.white
    private var innerController: InnerViewController?
    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = currentColor
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if var viewController = segue.destination as? InnerViewController, segue.identifier == "EmbedWithin" {
//            innerController = viewController
//            innerController!.currentColor = innerCurrentColor
//        }
//    }
    
    @IBAction func onChangeToGreen(_ sender: Any) {
        innerCurrentColor = UIColor.green
    }
    
    @IBAction func onChangeToYellow(_ sender: Any) {
        innerCurrentColor = UIColor.yellow
    }
    
    @IBAction func onChangeToPurple(_ sender: Any) {
        innerCurrentColor = UIColor.purple
    }
    
}
