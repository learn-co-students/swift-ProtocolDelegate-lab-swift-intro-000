//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit


class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var leftText: UITextField!
    @IBOutlet weak var rightText: UITextField!
    
    
    var emojiDelegate: EmojiCreation?
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBAction func saveBtn(_ sender: Any) {
        
        let lText: String = leftText.text!
        let rText: String = rightText.text!
        
        let combined = (lText, rText)
        
        emojiDelegate?.create(emojiGroup: combined)
        dismiss(animated: true, completion: nil)
        
    }
    
    

}
