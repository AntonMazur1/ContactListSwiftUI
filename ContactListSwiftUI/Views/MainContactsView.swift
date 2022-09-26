//
//  MainContactsView.swift
//  ContactListSwiftUI
//
//  Created by Клоун on 23.09.2022.
//

import SwiftUI

struct MainContactsView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.self) { contact in
                NavigationLink(contact.fullname, destination: DetailContactsView(contact: contact))
            }
            .navigationTitle("Contacts")
            .listStyle(.plain)
        }
    }
}

struct MainContactsView_Previews: PreviewProvider {
    static var previews: some View {
        MainContactsView(contacts: Person.getContacts())
    }
}
