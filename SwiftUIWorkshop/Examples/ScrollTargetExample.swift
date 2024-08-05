//
//  ScrollTargetExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 8/5/24.
//

import SwiftUI

struct ScrollTargetExample: View {
    @State private var visible: [Int] = []
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1..<100, id: \.self) { item in
                    Text(verbatim: item.formatted())
                }
            }
            .scrollTargetLayout()
        }
        .onChange(of: visible) {
            print(visible)
        }
    }
}
