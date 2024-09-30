//
//  ContainerViewExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 9/30/24.
//

import SwiftUI

struct ContainerViewExample: View {
    var body: some View {
        Card {
            Text("Hello, World!")
            Text("My name is Serge Sinkevych")
        }
    }
}

struct Card<Content: View>: View {
    @ViewBuilder var content: Content
    
    var body: some View {
        VStack {
            content
        }
        .padding()
        .background(Material.regular, in: .rect(cornerRadius: 8))
        .shadow(radius: 4)
    }
}
