//
//  AddView.swift
//  TodoList
//
//  Created by Cyril Busset on 15.04.2024.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {

        ScrollView{
            TextField("Enter text here", text: $textFieldText)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(15)
            
            Button(action: {
                
            }, label: {
                Text("Add Note".uppercased())
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
                    .font(.headline)

            })

            

        }
        .padding()
        .navigationTitle("Add note ✏️")
    }
}

#Preview {
    NavigationStack{
        AddView()

    }
}
