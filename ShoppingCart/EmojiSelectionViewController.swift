//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBAction func saveButton(_ sender: Any) {
        // left field stored in constant
        let leftEmoji = textFieldOne.text
        // right field stored in constant
        let rightEmoji = textFieldTwo.text
        // new constant that is tuple of both
        let emojiTuple : (String, String) = (rightEmoji!, leftEmoji!)
        emojiDelegate?.create(emojiGroup: emojiTuple)
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet var textFieldTwo: UITextField!
    @IBOutlet var textFieldOne: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    var emojiDelegate : EmojiCreation?
    
}
