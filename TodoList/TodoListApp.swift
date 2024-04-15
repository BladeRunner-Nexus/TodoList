//
//  TodoListApp.swift
//  TodoList
//
//  Created by Cyril Busset on 15.04.2024.
//

import SwiftUI

/*
 
 MVVM Architecture
 
 Model - Data Point
 View - UI
 ViewModel - Manages Models for views (aka controller)
 
 */

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()

            }
        }
    }
}
