//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var emojiField1: UITextField!
    @IBOutlet weak var emojiField2: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBAction func saveButton(_ sender: Any) {
        let leftEmojiField = emojiField1.text!
        let rightEmojiField = emojiField2.text!
        let emojiTuple = (leftEmojiField, rightEmojiField)
        emojiDelegate?.create(emojiGroup: emojiTuple)
        dismiss(animated: true, completion: nil)
    }
    
}
