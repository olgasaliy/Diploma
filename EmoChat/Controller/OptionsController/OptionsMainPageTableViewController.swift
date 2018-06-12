//
//  OptionsMainPageTableViewController.swift
//  EmoChat
//
//  Created by Olga Saliy on 14.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

class OptionsMainPageTableViewController:  UITableViewController {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameAndLastNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var manager: ManagerFirebase!
    var currentUser: CurrentUser!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentUser = CurrentUser.shared
        manager = ManagerFirebase.shared

        currentUser.updateInfoOnView = updateInfoOnView
        updateInfoOnView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if !currentUser.isLoaded {
            activityIndicator.startAnimating()
            activityIndicator.isHidden = false
            userImageView.isHidden = true
        }
        if let selectionIndexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: selectionIndexPath, animated: animated)
        }
    }
    
    func updateInfoOnView() {
        activityIndicator.stopAnimating()
        activityIndicator.isHidden = true
        userImageView.isHidden = false

        nameAndLastNameLabel.text = "\(currentUser.firstName ?? "Name") \(currentUser.secondName ?? "Lastname")"
        phoneNumberLabel.text = currentUser.phoneNumber
        usernameLabel.text = currentUser.username
        emailLabel.text = currentUser.email
        if let userPhoto = currentUser.photo {
            userImageView.image = userPhoto
        }
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let segueIdentifier = segue.identifier {
            switch segueIdentifier {
            case "signOut":
                switch manager.singOut() {
                case .failure(let error):
                    print(error)
                default:
                    break
                }
                
            default:
                break
            }
        }
    }
    
}
