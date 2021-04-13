//
//  ContactsListViewController.swift
//  ContactList
//
//  Created by Артем Репин on 13.04.2021.
//

import UIKit

class ContactsListViewController: UITableViewController {
    
    var persons: [Person] = []

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfoCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullname
        
        cell.contentConfiguration = content
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let personInfoVS = segue.destination as! PersonInfoViewController
            personInfoVS.person = persons[indexPath.row]
        }
    }
}
