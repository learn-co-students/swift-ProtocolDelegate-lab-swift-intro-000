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
    
    @IBOutlet weak var selectionTextWindowRight: UITextField!
    @IBOutlet weak var selectionTextWindowLeft: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    @IBAction func saveButton(_ sender: UIButton) {
        let leftParam = selectionTextWindowLeft.text
        let rightParam = selectionTextWindowRight.text
        let paramTuple = (leftParam!,rightParam!)
        emojiDelegate?.create(emojiGroup: paramTuple)
        dismiss(animated: true, completion: nil)
    }
    
}
