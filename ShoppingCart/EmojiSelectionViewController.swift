//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    var emojiDelegate : EmojiCreation?
    
    @IBOutlet weak var boxOne: UITextField!
    
    @IBOutlet weak var boxTwo: UITextField!
    
    @IBAction func btnSave(_ sender: UIButton) {
        guard let firstEmoji = boxOne.text, let secondEmoji = boxTwo.text else { return }
        
        let result = (firstEmoji, secondEmoji)
        emojiDelegate?.create(emojiGroup: result)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
