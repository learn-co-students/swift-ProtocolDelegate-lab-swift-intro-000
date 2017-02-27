//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var emoji1Field: UITextField!
    @IBOutlet weak var emoj2Field: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        let e1 = emoji1Field.text
        let e2 = emoj2Field.text
        
        if e1 != nil && e2 != nil {
            print("RYAN: Sending emojis to create()")
            let mojisTup = (e1!, e2!)
            emojiDelegate?.create(emojiGroup: mojisTup)
            dismiss(animated: true, completion: nil)
        }
        
    }
}
