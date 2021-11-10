//
//  ContactInfoVC.swift
//  Contacts
//
//  Created by Bohdan on 10.11.2021.
//

import UIKit

class ContactInfoVC: UIViewController {


    @IBOutlet weak var phoneNumberOnVC: UILabel!
    @IBOutlet weak var emailOnVC: UILabel!
    
    var personNumber = ""
    var personEmail = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberOnVC.text = personNumber
        emailOnVC.text = personEmail
    }
}
