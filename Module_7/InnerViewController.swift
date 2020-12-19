//
//  InnerViewController.swift
//  Module_7
//
//  Created by Любовь Волкова on 11.12.2020.
//

import UIKit

protocol InnerViewDelegate {
    func setBackgound(_ color: UIColor)
}

class InnerViewController: UIViewController {
    var delegate: InnerViewDelegate?
    var currentColor = UIColor.white {
        didSet { self.view.backgroundColor = self.currentColor }
    }
    var outColor = UIColor.black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = self.currentColor
    }
    
    
    @IBAction func changeOutBackground(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            self.outColor = .green
        case 1:
            self.outColor = .yellow
        case 2:
            self.outColor = .purple
        default: break
        }
        
        delegate?.setBackgound(self.outColor)
    }
}
