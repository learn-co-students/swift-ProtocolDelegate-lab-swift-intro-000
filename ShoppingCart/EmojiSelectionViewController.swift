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
    
    @IBOutlet weak var leftText: UITextField!
    @IBOutlet weak var rightText: UITextField!
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        let leftText = self.leftText.text
        let rightText = self.rightText.text
        
        if leftText != nil && rightText != nil {
            let emojiText = (leftText!, rightText!)
            emojiDelegate?.create(emojiGroup: emojiText)
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    
}
