//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    
    @IBOutlet var txtLeft: UITextField!
    @IBOutlet var txtRight: UITextField!
    
    @IBAction func btnSave(_ sender: UIButton) {
        let item = (txtLeft.text!, txtRight.text!)
        emojiDelegate?.create(emojiGroup: item)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    var emojiDelegate: EmojiCreation?
}
