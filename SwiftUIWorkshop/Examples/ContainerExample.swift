//
//  ContainerExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 6/3/25.
//

import Foundation
import SwiftUI

struct ContainerExample: View {
    var body: some View {
        Container(header: {
            Text("Welcome")
        }, content: {
            Text("Test content")
        })
    }
}
                  
struct Container<Header: View, Content: View>: View {
    @ViewBuilder var header: Header
    @ViewBuilder var content: Content

    var body: some View {
        VStack(spacing: 0) {
            header
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundStyle(.white)
                .background(Color.blue)

            ScrollView {
                content.padding()
            }
        }
    }
}

