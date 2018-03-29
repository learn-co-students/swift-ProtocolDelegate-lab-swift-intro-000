//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    // MARK: - IBAction
    
    @IBAction func save(_ sender: UIButton) {
        if let first = firstTextField.text , let second = secondTextField.text {
            let newEmoji: (String, String) = (first, second)
            emojiDelegate?.create(emojiGroup: newEmoji)
        }
        dismiss(animated: true, completion: nil)
    }
    
    
    // MARK: - delegate
    
    var emojiDelegate: EmojiCreation?
    
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
