//
//  InfoContactsListViewController.swift
//  ContactList
//
//  Created by Артем Репин on 13.04.2021.
//

import UIKit

class InfoContactsListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfoCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
