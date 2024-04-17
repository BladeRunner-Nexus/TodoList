//
//  ListView.swift
//  TodoList
//
//  Created by Cyril Busset on 15.04.2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "First Item", isCompleted: true),
        ItemModel(title: "Second", isCompleted: false),
        ItemModel(title: "Yo", isCompleted: true)
        
    ]
    
    var body: some View {
        

        List{
            ForEach(items) { item in
                ListRowView(item: item)
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


