//
//  ContactsView.swift
//  HWContactListSwiftUI
//
//  Created by Yuriy Martinovskiy on 11.08.2021.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts: [Contact]
    
    var body: some View {
            List(contacts) { contact in
                NavigationLink(
                    destination: InfoView(contact: contact),
                    label: {
                        Text("\(contact.fullName)")
                    })
                
            }
        }
    }


struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Contact.getContactList())
    }
}
