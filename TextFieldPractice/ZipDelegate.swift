//
//  ZipDelegate.swift
//  TextFieldPractice
//
//  Created by Johannes Dierkes on 25.04.17.
//  Copyright © 2017 Johannes Dierkes. All rights reserved.
//

import Foundation
import UIKit

class ZipDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        if Int(string) != nil || (string == "") {
            if newText.length == 6 {
                return false
            } else {
                return true
            }
        } else {
            return false
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

