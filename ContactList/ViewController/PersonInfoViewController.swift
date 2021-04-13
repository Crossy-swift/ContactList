//
//  PersonInfoViewController.swift
//  ContactList
//
//  Created by Артем Репин on 13.04.2021.
//

import UIKit

class PersonInfoViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        
        title = person.fullname
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
        
    }
}

