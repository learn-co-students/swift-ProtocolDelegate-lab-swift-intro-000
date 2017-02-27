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
    
    @IBOutlet weak var rightSideText: UITextField!
   
    @IBAction func saveButton(_ sender: Any) {
    
    let rightTextField = rightSideText.text
    let leftTextField = leftSideText.text
    
    emojiDelegate?.create(emojiGroup: (rightTextField!, leftTextField!))
    dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var leftSideText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
}
