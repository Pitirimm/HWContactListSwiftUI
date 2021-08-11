//
//  ContentView.swift
//  HWContactListSwiftUI
//
//  Created by Yuriy Martinovskiy on 11.08.2021.
//

import SwiftUI

struct ContentView: View {
    let contacts = Contact.getContactList()
    
    var body: some View {
        NavigationView {
        TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill").resizable()
                    Text("Contacts")
                }
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill").resizable()
                    Text("Numbers")
                }
        }.navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
