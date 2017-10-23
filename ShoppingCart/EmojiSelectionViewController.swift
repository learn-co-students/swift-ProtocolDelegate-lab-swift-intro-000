//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    
    @IBOutlet weak var emoji_1_textField: UITextField!
    @IBOutlet weak var emoji_2_textField: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        let firstEmoji = emoji_1_textField.text!
        let secondEmoji = emoji_2_textField.text!
        let emojis: (String,String) = (firstEmoji, secondEmoji)
        
        emojiDelegate?.create(emojiGroup: emojis)
        
        // There is no Back button on this screen
        dismiss(animated: true, completion: nil)
    }
    
}
