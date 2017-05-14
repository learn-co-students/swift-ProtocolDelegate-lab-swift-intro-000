//
//  ShoppingListViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit


// TODO: Create protocol here.
//(3) - Head back to the ShoppingListViewController.swift file. Near the top of this file, right below the import UIKit line of code, we will be creating a protocol.
//Create a protocol called EmojiCreation. In your implementation of this protocol should be one requirement. A function called create(emojiGroup:) that takes in one argument called emojiGroup of type (String, String).
//If someone was to call on this function, they would do so like this:
//create(emojiGroup: ("😋", "🤕"))
//The two parenthesis seem weird when calling that function (we'll go into that more later), but that's because the type of the argument of this function is a tuple and you create a tuple using parenthesis like that.
protocol EmojiCreation {
    func create(emojiGroup: (String, String))
}

class ShoppingViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis: [(String, String)] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.75, green:0.18, blue:0.27, alpha:1.00)
        tableView.backgroundColor = UIColor(red:0.85, green:0.37, blue:0.29, alpha:1.0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! EmojiSelectionViewController
        destination.emojiDelegate = self
    }
    
}

// MARK: - UITableViewDataSource Methods
extension ShoppingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiCellTableViewCell
        let currentEmojiLove = emojis[(indexPath as NSIndexPath).row]
        cell.firstEmojiLabel.text = currentEmojiLove.0
        cell.secondEmojiLabel.text = currentEmojiLove.1
        return cell
    }
}

// MARK: - UITableViewDelegate Methods
extension ShoppingViewController: UITableViewDelegate { }

//(4) In the ShoppingListViewController.swift file, scroll down to the bottom and create an extension on the ShoppingViewController where within the extension you're adopting the EmojiCreation. Very similar to how it's being done with the Data Source and Delegate protocols.
extension ShoppingViewController: EmojiCreation {
    func create(emojiGroup: (String, String)) {
        emojis.append(emojiGroup)
    }
}

