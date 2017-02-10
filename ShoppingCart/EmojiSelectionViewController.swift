//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
        let userInput1 = textField1.text!
        let userInput2 = textField2.text!
        let finalTuple = (userInput1, userInput2)
        
        emojiDelegate?.create(emojiGroup: finalTuple)
        print("Emoji Delegate Create Function Called")
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
