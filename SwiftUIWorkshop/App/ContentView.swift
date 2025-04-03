//
//  ContentView.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/3/24.
//

import SwiftUI

struct ContentView: View {
    let examples: [Example]
    @State private var searchText = ""

    var filteredExamples: [Example] {
        if searchText.isEmpty {
            return examples
        } else {
            return examples.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationStack {
            List(filteredExamples) { example in
                NavigationLink(example.title) {
                    example
                }
            }
            .navigationTitle(Constants.examplesTitle)
            .searchable(text: $searchText, prompt: "Search Examples")
        }
    }
}

#Preview {
    ContentView(examples: Constants.examples)
}
