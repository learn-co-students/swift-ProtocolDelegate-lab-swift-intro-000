//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var leftTextField: UITextField!
    @IBOutlet weak var rightTextField: UITextField!
    //new property adopting the EmojiCreation protocol
    var emojiDelegate: EmojiCreation?
    
    @IBAction func saveButtonTapped(_ sender: AnyObject) {
        emojiDelegate?.create(emojiGroup: (leftTextField.text!, rightTextField.text!))
        print(leftTextField.text)
        print(rightTextField.text)
        //here, the view controller is being dismissed
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
