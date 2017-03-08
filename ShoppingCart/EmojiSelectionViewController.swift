//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var leftTextField: UITextField!
    @IBOutlet weak var rightTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        if let leftText = leftTextField.text {
            let actualLeft = leftText
            if let rightText = rightTextField.text {
                let actualRight = rightText
                emojiDelegate?.create(emojiGroup: (actualLeft, actualRight))
            }
        }
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    var emojiDelegate: EmojiCreation?
}
