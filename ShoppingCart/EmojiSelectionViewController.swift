//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
  
  
  var emojiDelegate : EmojiCreation?
  

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
  
  @IBAction func buttonSave(_ sender:Any) {
    
    let pair = (inputEmoji.text,input2Emoji.text)
    emojiDelegate?.create(emojiGroup: pair as! (String, String))
    dismiss(animated: true, completion: nil)
   // print(pair)
  }
  
  @IBOutlet weak var inputEmoji: UITextField!
  
  @IBOutlet weak var input2Emoji: UITextField!
  
  
}
