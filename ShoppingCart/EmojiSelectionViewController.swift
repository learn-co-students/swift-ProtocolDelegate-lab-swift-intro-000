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
    
    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var field2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        if let emoji1 = self.field1.text, let emoji2 = self.field2.text {
            self.emojiDelegate?.create(emojiGroup: (emoji1, emoji2))
            
            dismiss(animated: true, completion: nil)
        }
    }
    
}
