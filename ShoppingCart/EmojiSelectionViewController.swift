//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var Text1: UITextField!
    
    @IBOutlet weak var Text2: UITextField!
    
    @IBAction func Save(_ sender: UIButton) {
    
        let t1: String =  Text1.text!
        print("\(t1)")
        let t2: String = Text2.text!
        print("\(t2)")
        let inputTuple = (t1, t2)
        
        emojiDelegate?.create(emojiGroup: inputTuple)
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    var emojiDelegate: EmojiCreation?
    
}
