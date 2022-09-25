//
//  AdditionalContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Клоун on 23.09.2022.
//

import SwiftUI

struct AdditionalContactRowView: View {
    let image: String
    let contactInfo: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Image(systemName: image)
                Text(contactInfo)
            }
        }
    }
}

struct AdditionalContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalContactRowView(image: "phone.fill", contactInfo: "email")
    }
}
