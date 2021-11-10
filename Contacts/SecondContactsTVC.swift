//
//  SecondContactsTVC.swift
//  Contacts
//
//  Created by Bohdan on 10.11.2021.
//

import UIKit

class SecondContactsTVC: UITableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return person.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(DataManager.names[section]) \(DataManager.surnames[section])"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsSecond", for: indexPath)
        if  indexPath.row == 0 {
        cell.textLabel?.text = "\(DataManager.numbers[indexPath.section])"
        cell.imageView?.image = UIImage.init(systemName: "phone")

        } else {
        cell.textLabel?.text = "\(DataManager.emails[indexPath.section])"
        cell.imageView?.image = UIImage.init(systemName: "tray")

        }
        return cell
    }
}
