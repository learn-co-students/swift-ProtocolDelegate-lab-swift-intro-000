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
    
    @IBOutlet weak var emojiField1: UITextField!
    
    @IBOutlet weak var emojiField2: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        guard let emoji1 = emojiField1.text else {
        return }
        guard let emoji2 = emojiField2.text else {
        return }
        emojiDelegate?.create(emojiGroup: (emoji1, emoji2))
        dismiss(animated: true, completion: nil)
        print("emojis selected and stored")
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
