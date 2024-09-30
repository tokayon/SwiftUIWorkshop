//
//  CarouselExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 9/30/24.
//

import SwiftUI

struct CarouselExample: View {
    var body: some View {
        Carousel {
            Color.yellow
            Color.orange
            Color.red
            Color.blue
            Color.green
        }
    }
}

struct Carousel<Content: View>: View {
    @ViewBuilder var content: Content
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(subviews: content) { subview in
                    subview
                        .containerRelativeFrame(.horizontal)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
        .contentMargins(16)
    }
}
