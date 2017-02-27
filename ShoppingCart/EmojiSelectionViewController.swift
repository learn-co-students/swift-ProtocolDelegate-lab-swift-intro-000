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
    
    @IBOutlet weak var inputForEmojiOne: UITextField!
    @IBOutlet weak var inputForEmojiTwo: UITextField!
    
    @IBAction func saveButton(_ sender: UIButton) {
        if let inputFromLeft = inputForEmojiOne.text, let inputFromRight = inputForEmojiTwo.text {
            let tupleToSend = (inputFromLeft, inputFromRight)
            emojiDelegate?.create(emojiGroup: tupleToSend)
        }
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}

