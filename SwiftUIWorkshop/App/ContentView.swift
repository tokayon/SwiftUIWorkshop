//
//  ContentView.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/3/24.
//

import SwiftUI

struct ContentView: View {
    let examples: [Example]
    
    var body: some View {
        NavigationStack {
            List(examples) { example in
                NavigationLink(example.title) {
                    example
                }
            }
            .navigationTitle(Constants.examplesTitle)
        }
    }
}

#Preview {
    ContentView(examples: Constants.examples)
}
