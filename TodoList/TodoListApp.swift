//
//  TodoListApp.swift
//  TodoList
//
//  Created by User on 03.04.2026.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 */

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
        }
    }
}
