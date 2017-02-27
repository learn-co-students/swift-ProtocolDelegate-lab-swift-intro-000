//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    var emojiDelegate:EmojiCreation?
    
    @IBOutlet weak internal var leftLabel: UITextField!
    @IBOutlet weak internal var rightLabel: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}

//alright, i'll do an extension...

extension EmojiSelectionViewController {
    
    @IBAction func saveButtonTap(_ sender: UIButton){
        //let emojiGroup = (leftLabel.text, rightLabel.text)
        
        guard let firstEmoji = leftLabel.text,
            let secondEmoji = rightLabel.text
            else { return }
        let emojiGroup = (firstEmoji, secondEmoji)
        
        emojiDelegate?.create(emojiGroup)
        dismiss(animated: true, completion: nil)
    }
}
