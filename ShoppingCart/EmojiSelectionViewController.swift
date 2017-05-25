//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var leftTextFieldOutlet: UITextField!
    @IBOutlet weak var rightTextFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    var emojiDelegate: EmojiCreation?
    
    @IBAction func saveAction(_ sender: UIButton) {
        let emojis = (leftTextFieldOutlet.description, rightTextFieldOutlet.description);
        
        emojiDelegate?.create(emojiGroup: emojis);
        dismiss(animated: true, completion: nil);
    }
    
    
    
}

protocol EmojiCreation {
    func create(emojiGroup: (String, String));
}
