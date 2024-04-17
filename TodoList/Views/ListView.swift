//
//  ListView.swift
//  TodoList
//
//  Created by Cyril Busset on 15.04.2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "First item",
        "Second item",
        "Third item"
        
    ]
    
    var body: some View {
        

        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
            
        }
        .listStyle(.inset)
        .navigationTitle("ToDo List 📋")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationStack{
        ListView()
        
    }
}


