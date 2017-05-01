//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    var emojiDelegate: EmojiCreation?
    
    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var field2: UITextField!
    
    @IBAction func save(_ sender: Any) {
        let emoji1 = field1.text
        let emoji2 = field2.text
        emojiDelegate?.create(emojiGroup: (emoji1!, emoji2!))
        dismiss(animated: true, completion: nil)
    }
}
