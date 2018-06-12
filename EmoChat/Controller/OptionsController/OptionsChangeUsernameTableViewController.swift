//
//  OptionsChangeUserNameTableViewController.swift
//  EmoChat
//
//  Created by Olga Saliy on 15.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

class OptionsChangeUsernameTableViewController: UITableViewController, UITextFieldDelegate,
RegexCheckProtocol {
    
    @IBOutlet weak var changeUsernameTextField: UITextField!
    @IBOutlet weak var infoLabel: UILabel!
    var currentUser: CurrentUser!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Singleton
        currentUser = CurrentUser.shared
        
        //Show current username in textfield
        changeUsernameTextField.text = currentUser.username
        
        //Init rigth button item
        let rightButtonItem = UIBarButtonItem.init(barButtonSystemItem: .save, target: self, action: #selector(saveUserName))
        self.navigationItem.rightBarButtonItem = rightButtonItem
        
        //Hide keybord ot tap
        self.hideKeyboard()
    }
    
    // MARK: - Actions with editing
    @IBAction func usernameEdited(_ sender: UITextField) {
        
        if usernameIsValid(userName: sender.text) {
            infoLabel.text = NSLocalizedString("Username is valid", comment: "Username is valid")
            infoLabel.textColor = UIColor.darkGray
        } else {
            infoLabel.printError(errorText: "Enter valid username")
        }
        
    }
    
    // MARK: - Save to firebase
    func saveUserName(sender: UIBarButtonItem) {
        if  usernameIsValid(userName: changeUsernameTextField.text){
            currentUser.changeUsername(newUsername: changeUsernameTextField.text!) { result in
                if result.isEmpty {
                    //Back to previous vc
                    if let navController = self.navigationController {
                        navController.popViewController(animated: true)
                    }
                } else {
                    self.infoLabel.printError(errorText: result)
                }
            }
        }
    }
}

