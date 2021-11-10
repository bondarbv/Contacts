//
//  FirstContactsTVC.swift
//  Contacts
//
//  Created by Bohdan on 10.11.2021.
//

import UIKit

let person = DataManager.getPersonInfo()

class FirstContactsTVC: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsFirst", for: indexPath)
        cell.textLabel?.text = "\(DataManager.names[indexPath.row]) \(DataManager.surnames[indexPath.row])"
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowContactInfo" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let contactInfoVC = segue.destination as! ContactInfoVC
                contactInfoVC.personNumber = DataManager.numbers[indexPath.row]
                contactInfoVC.personEmail = DataManager.emails[indexPath.row]
                contactInfoVC.title = "\(DataManager.names[indexPath.row]) \(DataManager.surnames[indexPath.row])"
        }
    }
}
}
