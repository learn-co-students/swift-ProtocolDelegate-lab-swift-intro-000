//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    //Stored properties
    var emojiDelegate: EmojiCreation?
    
    
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    
    @IBAction func savebutton(_ sender: Any) {
        if let first = textfield1.text {
            if let second = textfield2.text {
                      let emoji: (String, String) = (first, second)
                        emojiDelegate?.create(emojiGroup: emoji)
            }
        }
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
