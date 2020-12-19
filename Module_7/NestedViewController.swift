//
//  NestedViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 11.12.2020.
//

import UIKit

class NestedViewController: UIViewController {
    var currentColor = UIColor.black {
        didSet {
            self.view.backgroundColor = self.currentColor
        }
    }
    var innerCurrentColor = UIColor.white
    private var innerController: InnerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = self.currentColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? InnerViewController, segue.identifier == "EmbedWithin" else {
            return
        }
        innerController = vc
        vc.currentColor = self.innerCurrentColor
        vc.delegate = self
    }
    
    @IBAction func changeInnerBackground(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            self.innerCurrentColor = .green
        case 1:
            self.innerCurrentColor = .yellow
        case 2:
            self.innerCurrentColor = .purple
        default: break
        }
        
        self.setInnerColor(innerCurrentColor)
    }
    
    func setInnerColor(_ color: UIColor) {
        self.innerController?.currentColor = color
    }
}

extension NestedViewController: InnerViewDelegate {
    func setBackgound(_ color: UIColor) {
        self.currentColor = color
    }
}
