//
//  AdditionalContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Клоун on 23.09.2022.
//

import SwiftUI

struct AdditionalContactRowView: View {
    let contact: Person
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Image(systemName: "person.text.rectangle.fill")
                Text(contact.email)
            }
            HStack {
                Image(systemName: "phone.arrow.up.right.fill")
                Text(contact.phone)
            }
        }
    }
}

struct AdditionalContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalContactRowView(contact: Person.getPerson())
    }
}
