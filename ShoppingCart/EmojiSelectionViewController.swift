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
    
    @IBOutlet weak var firstText: UITextField!
    
    @IBOutlet weak var secondText: UITextField!
    
    @IBAction func oneButton(_ sender: UIButton) {
        
        let firstInput = firstText.text
        let secondInput = secondText.text
        let newTuple: (String,String) = (firstInput!, secondInput!)
        emojiDelegate?.create(newTuple)
        dismiss(animated: true, completion: nil)
    }
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
