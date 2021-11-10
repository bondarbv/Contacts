//
//  Person.swift
//  Contacts
//
//  Created by Bohdan on 09.11.2021.
//
struct PersonInfo {
    let name: String
    let surname: String
    let number: String
    let email: String
}

class DataManager {
    static var names = [
        "Liam", "Noah", "Oliver", "Elijah", "William", "James", "Benjamin",
        "Lucas", "Henry", "Alexander", "Olivia", "Emma", "Ava", "Charlotte",
        "Sophia", "Amelia", "Isabella", "Mia", "Evelyn", "Harper"
    ]
    
    static var surnames = [
        "Smith", "Johnson", "Williams", "Jones", "Brown", "Davis", "Miller",
        "Wilson", "Moore", "Taylor", "Anderson", "Thomas", "Jackson", "White",
        "Harris", "Martin", "Thompson", "Garcia", "Martinez", "Robinson"
    ]
    static var numbers = [
        "+7(4236)59-83-96", "+7(391)539-47-70", "+7(351)592-11-61",
        "+7(4236)25-81-36", "+7(4212)23-85-63", "+7(391)929-26-05",
        "+7(3513)51-97-94", "+7(8662)28-80-47", "+7(3452)82-18-03",
        "+7(3953)44-33-55", "+7(3452)73-45-11", "+7(4212)24-71-31",
        "+7(812)668-59-60", "+7(861)874-42-57", "+7(4212)75-84-92",
        "+7(496)735-05-73", "+7(351)918-35-76", "+7(39550)9-87-84",
        "+7(8442)99-81-27", "+7(4922)53-21-98"
    ]
    static var emails = [
        "camenisch@comcast.net", "policies@yahoo.com", "rcwil@yahoo.ca",
        "markjugg@aol.com", "trygstad@me.com", "csilvers@icloud.com",
        "dcoppit@hotmail.com", "duchamp@mac.com", "sscorpio@gmail.com",
        "luvirini@yahoo.com", "thrymm@sbcglobal.net", "brobins@icloud.com",
        "alastair@yahoo.com", "amcuri@live.com", "andrewik@att.net",
        "gospodin@yahoo.com", "campbell@verizon.net", "thrymm@att.net",
        "carcus@outlook.com", "evans@gmail.com"
    ]
    
    static func getPersonInfo() -> [PersonInfo] {
        
        var person: [PersonInfo] = []
        
        names.shuffle()
        surnames.shuffle()
        numbers.shuffle()
        emails.shuffle()
        
        for i in 0...names.count - 1 {
            person.append(PersonInfo(name: names[i], surname: surnames[i], number: numbers[i], email: emails[i]))
        }
        return person
        }
}
