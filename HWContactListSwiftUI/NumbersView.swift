//
//  NumbersView.swift
//  HWContactListSwiftUI
//
//  Created by Yuriy Martinovskiy on 11.08.2021.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Contact]
    
    var body: some View {
        List() {
            ForEach(contacts) { contact in
                Section(header: Text(contact.fullName)) {
                    ContactRow(contact: contact)
                    }
                }
                
            }
        }
}



struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Contact.getContactList())
    }
}
