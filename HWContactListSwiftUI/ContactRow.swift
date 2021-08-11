//
//  ContactRow.swift
//  HWContactListSwiftUI
//
//  Created by Yuriy Martinovskiy on 11.08.2021.
//

import SwiftUI

struct ContactRow: View {
    let contact: Contact
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text(contact.phoneNumber)
            }
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text(contact.email)
            }
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Contact(name: "Ivan",
                                    surname: "Ivanov",
                                    phone: "89112345463",
                                    email: "iivanov@mail.ru"))
    }
}
