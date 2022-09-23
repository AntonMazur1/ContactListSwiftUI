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
            Text(contact.fullname)
                .font(.largeTitle)
            Text(contact.phone)
            Text(contact.email)
            Spacer()
        }
        .navigationTitle("Details")
        .font(.headline)
        .padding()
    }
}

struct DetailContactsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactsView(contact: Person.getPerson())
    }
}
