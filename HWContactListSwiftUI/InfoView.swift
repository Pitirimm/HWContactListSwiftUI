//
//  InfoView.swift
//  HWContactListSwiftUI
//
//  Created by Yuriy Martinovskiy on 11.08.2021.
//

import SwiftUI

struct InfoView: View {
    let contact: Contact
    
    var body: some View {
        VStack {
            List{
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
            .listStyle(SidebarListStyle())
            .navigationTitle(contact.fullName)
        }
    }
    
    
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(contact: Contact(name: "Ivan",
                                  surname: "Ivanov",
                                  phone: "89112345463",
                                  email: "iivanov@mail.ru"))
    }
}
