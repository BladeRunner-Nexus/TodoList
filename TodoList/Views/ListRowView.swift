//
//  ListRowView.swift
//  TodoList
//
//  Created by Cyril Busset on 15.04.2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
                .foregroundColor(item.isCompleted ? .green : .red)

            Spacer()
        }
    }
}

let item1 = ItemModel(title: "Cool", isCompleted: true)
let item2 = ItemModel(title: "Soper", isCompleted: false)


#Preview {
    
    Group{
        ListRowView(item: item1)
        ListRowView(item: item2)
    }


    
}

