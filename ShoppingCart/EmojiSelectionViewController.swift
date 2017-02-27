//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var leftUITextField: UITextField!
    @IBOutlet weak var rightUITextField: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        emojiDelegate?.create(emojiGroup: (leftUITextField.text!, rightUITextField.text!))
        dismiss(animated: true, completion: nil)
    }
    
    
}
