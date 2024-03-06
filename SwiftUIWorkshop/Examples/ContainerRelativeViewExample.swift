//
//  NavigationViewExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/6/24.
//

import SwiftUI

struct ContainerRelativeViewExample: View {

    var body: some View {
        VStack {
            Text("Container Relative Frame")
                .font(.title)
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(Gradient(colors: [.teal, .cyan, .green]).opacity(0.6))
    }
}

#Preview {
    ContainerRelativeViewExample()
}
