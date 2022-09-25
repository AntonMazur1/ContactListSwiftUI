//
//  DetailContactsView.swift
//  ContactListSwiftUI
//
//  Created by Клоун on 23.09.2022.
//

import SwiftUI

struct DetailContactsView: View {
    let contact: Person
    
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
            List {
                Label(contact.phone, systemImage: "phone.fill")
                Label(contact.email, systemImage: "mail.fill")
            }
        }
        .navigationTitle(contact.fullname)
        .listStyle(.plain)
        .font(.headline)
        .padding()
    }
}

struct DetailContactsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactsView(contact: Person.getContacts().first!)
    }
}
