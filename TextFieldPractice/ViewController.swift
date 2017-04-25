//
//  ViewController.swift
//  TextFieldPractice
//
//  Created by Johannes Dierkes on 25.04.17.
//  Copyright © 2017 Johannes Dierkes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var zipCodeLabel: UITextField!
    
    @IBOutlet weak var editingAllowdIfSwitchOnLabel: UITextField!
    
    @IBOutlet weak var allowEditingSwitch: UISwitch!
    
    let zipCodeDelegate = ZipDelegate()
    let cashTextDelegate = CashTextDelegate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.zipCodeLabel.delegate = zipCodeDelegate
        self.editingAllowdIfSwitchOnLabel.delegate = self
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if allowEditingSwitch.isOn {
            return true
        } else {
            return false
        }
    }
    
}


