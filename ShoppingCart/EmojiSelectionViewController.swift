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
    
    @IBOutlet var textBox1: UIView!
    @IBOutlet var textBox2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBAction func textButton(_ sender: Any) {
        let boxOneText = textBox1.accessibilityIdentifier
        let boxTwoText = textBox2.accessibilityIdentifier
        let textBoxTuple = (boxOneText, boxTwoText)
        emojiDelegate?.create(emojiGroup: textBoxTuple as! (String, String))
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
