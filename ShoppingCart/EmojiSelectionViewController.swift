//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBAction func HitSaveButton(_ sender: UIButton) {
        let leftText = LeftText.text
        let rightText = RightText.text
        
        if (leftText != nil && rightText != nil) {
            emojiDelegate?.create(emojiGroup: (leftText!, rightText!))
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBOutlet weak var LeftText: UITextField!
    @IBOutlet weak var RightText: UITextField!
    
    var emojiDelegate : EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
