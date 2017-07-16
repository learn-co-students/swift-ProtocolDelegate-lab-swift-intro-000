//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    @IBOutlet weak var leftEmoji: UITextField!
    @IBOutlet weak var rightEmoji: UITextField!
    var emojiDelegete: EmojiCreationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}

extension EmojiSelectionViewController {
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let firstEmoji = leftEmoji.text, let secondEmoji = rightEmoji.text else {
            return
        }
        let emojiGroup = (firstEmoji, secondEmoji)
        emojiDelegete?.create(emojiGroup: emojiGroup)
        dismiss(animated: true, completion: nil)
    }
}
