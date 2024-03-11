//
//  GridViewExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/10/24.
//

import SwiftUI

struct GridViewExample: View {
    
    let gridItems = [GridItem(.flexible(minimum: 0, maximum: .infinity),
                              spacing: 30,
                              alignment: .center),
                     GridItem(.flexible(minimum: 0, maximum: .infinity),
                              spacing: 30,
                              alignment: .center)]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItems,
                      alignment: .center,
                      spacing: 20,
                      content: {
                
                ForEach(0 ... 25, id: \.self) { index in
                    randomColor
                        .frame(width: 100)
                }
            })
        }
    }
    
    var randomColor: Color {
        let colors: [Color] = [.red, .cyan, .blue, .yellow, .orange, .purple, .green, .indigo, .mint]
        let randomIndex = Int.random(in: 0..<colors.count)
        return colors[randomIndex]
    }
}

#Preview {
    GridViewExample()
}
    
