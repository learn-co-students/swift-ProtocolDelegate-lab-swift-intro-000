//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    @IBAction func saveButton(_ sender: Any) {
        let input1: String = self.input1.text!
        let input2: String = self.input2.text!
        
        let combined = (input1, input2)
        
        emojiDelegate?.create(emojiGroup: combined)
        dismiss(animated: true, completion: nil)
    }

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
