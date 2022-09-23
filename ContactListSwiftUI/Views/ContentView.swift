//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Клоун on 23.09.2022.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getContacts()
    
    var body: some View {
        TabView {
            MainContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Contacts")
                }
            
            AdditionalContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person")
                    Text("Additional Contacts")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
