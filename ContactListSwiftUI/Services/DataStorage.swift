//
//  DataStorage.swift
//  ContactListSwiftUI
//
//  Created by Клоун on 23.09.2022.
//

import Foundation

class DataStorage {
    
    static let shared = DataStorage()
    
    let names = [
        "Jack","John","Mike",
        "James","Max","Kylie",
        "Boris","Kendall","George"
    ]
    
    let secondNames = [
        "Smith","Johnson","Williams",
        "Jones","Brown","Davis",
        "Miller","Wilson","Cook"
    ]
    
    let emails = [
        "asd@email.com", "adasd@yahoo.com","fgdf@gmail.com",
        "dhdfg@yandex.com","ghfdfg@mail.ru","retw@hoke.com",
        "cbbdf@galon.ua","dgdfgd@youmail.com","hukhk1@income.net"
    ]
    
    let phones = [
        "+12345678900","+12345678735","+12345678862",
        "+12345678901","+12345678103","+12345678195",
        "+12345678342","+12345678536","+12345678867"
    ]
    
    private init() {}
}
