//
//  AdditionalContactsView.swift
//  ContactListSwiftUI
//
//  Created by Клоун on 23.09.2022.
//

import SwiftUI

struct AdditionalContactsView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.self) { contact in
                Section(contact.fullname) {
                    AdditionalContactRowView(image: "phone.fill", contactInfo: contact.phone)
                    AdditionalContactRowView(image: "mail.fill", contactInfo: contact.email)
                }
            }
            .navigationTitle("Contacts")
            .listStyle(.plain)
        }
    }
}

struct AdditionalContactsView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalContactsView(contacts: Person.getContacts())
    }
}
