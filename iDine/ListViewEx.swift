//
//  ListViewEx.swift
//  iDine
//
//  Created by jos van oorschot on 09/12/2021.
//

import SwiftUI

struct ListViewEx: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { s in
                    Section(header:
                        Text(s.name)){
                            ForEach(s.items) { i in
                                ItemRow(item: i)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
        }
        
    }
}

struct ListViewEx_Previews: PreviewProvider {
    static var previews: some View {
        ListViewEx()
    }
}
