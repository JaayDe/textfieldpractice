//
//  CashTextDelegate.swift
//  TextFieldPractice
//
//  Created by Johannes Dierkes on 25.04.17.
//  Copyright © 2017 Johannes Dierkes. All rights reserved.
//

import Foundation
import UIKit

class CashTextDelegate: NSObject, UITextFieldDelegate {
    
    var counter:Int = 0
    var updatedText:String = ""
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        textField.text = "$ 0.00"
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if Int(string) != nil || (string == "") {
            
            updatedText = updatedText.appending(string)
            let charsInText = updatedText.characters.count
            
            switch charsInText {
            case 1:
                textField.text = "$ 0.0" + updatedText
            case 2:
                textField.text = "$ 0." + updatedText
            default:
                let dollar = updatedText[updatedText.startIndex..<updatedText.index(updatedText.startIndex, offsetBy: charsInText - 2)]
                let pennies = updatedText[updatedText.index(updatedText.startIndex, offsetBy: charsInText - 2)..<updatedText.endIndex]
                
                textField.text = "$ " + dollar + "." + pennies
            }
        }
        
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
