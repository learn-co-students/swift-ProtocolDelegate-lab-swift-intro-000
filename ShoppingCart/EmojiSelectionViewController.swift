//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
  
  @IBOutlet weak var emojiBoxLabel: UILabel!
  @IBOutlet weak var textFieldLeft: UITextField!
  @IBOutlet weak var textFieldRight: UITextField!
  
  var emojiDelegate: EmojiCreation?
  
  @IBAction func saveButton(_ sender: UIButton) {
    var emojiGroup: (leftField: String, rightField: String) = ("","")
    
    if let leftFieldText = textFieldLeft.text {
      emojiGroup.leftField = leftFieldText
      if let rightFieldText = textFieldRight.text {
        emojiGroup.rightField = rightFieldText
      }
    }
    
    emojiDelegate?.create(emojiGroup: emojiGroup)
    
    dismiss(animated: true, completion: nil)
  }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
