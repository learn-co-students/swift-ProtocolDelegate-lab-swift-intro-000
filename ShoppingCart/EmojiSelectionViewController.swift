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
    var emojiDelegate: EmojiCreation? // optional delegate

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
        var emoji1: String = ""
        var emoji2: String = ""
        
        if let emoji1Opt = textField1.text {
            emoji1 = emoji1Opt
        }
        
        if let emoji2Opt = textField2.text {
            emoji2 = emoji2Opt
        }
        
        let emojiPair = (emoji1, emoji2)
        
        emojiDelegate?.create(emojiGroup: emojiPair)
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
}
