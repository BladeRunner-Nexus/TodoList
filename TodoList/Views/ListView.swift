//
//  ListView.swift
//  TodoList
//
//  Created by Cyril Busset on 15.04.2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List{
            ListRowView(title: "This is the title")

        }
        .navigationTitle("ToDo List 📋")
    }
}

#Preview {
    NavigationStack{
        ListView()
        
    }
}


