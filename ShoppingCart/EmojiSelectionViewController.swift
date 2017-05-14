//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var emojiText1: UITextField!
    @IBOutlet weak var emojiText2: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        guard let emoji1 = emojiText1.text else { return }
        guard let emoji2 = emojiText2.text else { return }
        emojiDelegate?.create(emojiGroup: (emoji1, emoji2))
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
