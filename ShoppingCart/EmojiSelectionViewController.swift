//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        
        var text1: String = ""
        var text2: String = ""
        
        
        
        if let x1 = textField1.text {
            text1 = x1
        }
        if let x2 = textField2.text {
            text2 = x2
        }
        let tuple: (String, String) = (text1, text2)
        
        emojiDelegate?.create(emojiGroup: tuple)
        
        dismiss(animated: true, completion: nil)
 
        
        
    }
    
    
}
