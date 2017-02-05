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
    
    @IBOutlet weak internal var leftTextField: UITextField!
    @IBOutlet weak internal var rightTextField: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}

extension EmojiSelectionViewController {
    
    @IBAction func saveButton(_ sender: UIButton) {
        guard let firstEmoji = leftTextField.text,
            let secondEmoji = rightTextField.text
            else { return }
        let emojiGroup = (firstEmoji, secondEmoji)
        
        emojiDelegate?.create(emojiGroup)
        dismiss(animated: true, completion: nil)
    }
}
