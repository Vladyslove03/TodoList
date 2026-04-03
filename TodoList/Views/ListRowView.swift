//
//  ListRowView.swift
//  TodoList
//
//  Created by User on 03.04.2026.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "This is the first title")
}
