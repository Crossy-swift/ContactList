//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Артем Репин on 13.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getPerson()
    
    override func viewDidLoad() {
       setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with: [Person]) {
        let contactVC = viewControllers?.first as! ContactsListViewController
        let infoContactVC = viewControllers?.last as! InfoContactsListViewController
        
        contactVC.persons = persons
        infoContactVC.persons = persons
    }

}
