//
//  MagazineExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 9/30/24.
//

import SwiftUI

struct MagazineExample: View {
    var body: some View {
        Magazine {
            Color.yellow
            Color.orange
            Color.red
            Color.blue
            Color.green
        }
    }
}

struct Magazine<Content: View>: View {
    @ViewBuilder var content: Content
    
    var body: some View {
        ScrollView {
            Group(subviews: content) { subviews in
                if !subviews.isEmpty {
                    subviews[0]
                        .padding(.horizontal)
                        .containerRelativeFrame(.vertical) { length, _ in
                            return length / 3
                        }
                }
                
                if subviews.count > 1 {
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(subviews[1...], id: \.id) { subview in
                                subview
                                    .containerRelativeFrame([.horizontal, .vertical])
                            }
                        }
                        .scrollTargetLayout()
                    }
                    .scrollTargetBehavior(.viewAligned)
                    .contentMargins(16)
                }
            }
        }
    }
}
