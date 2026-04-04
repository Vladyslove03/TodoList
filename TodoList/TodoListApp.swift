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
import SwiftUI
@main
struct TodoListApp: App {
    
    @State private var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environment(listViewModel)
        }
    }
}
