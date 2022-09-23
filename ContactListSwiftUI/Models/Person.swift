//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Клоун on 23.09.2022.
//

import Foundation

struct Person: Hashable {
    let name: String
    let secondName: String
    let phone: String
    let email: String
    
    var fullname: String {
        name + " " + secondName
    }
    
    static func getPerson() -> Person {
        Person(name: "Ivan", secondName: "Budko", phone: "+901323", email: "ivan@gmail.com")
    }
    
    static func getContacts() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStorage.shared.names.shuffled()
        let secondNames = DataStorage.shared.secondNames.shuffled()
        let phones = DataStorage.shared.phones.shuffled()
        let emails = DataStorage.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            secondNames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                secondName: secondNames[index],
                phone: phones[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}


