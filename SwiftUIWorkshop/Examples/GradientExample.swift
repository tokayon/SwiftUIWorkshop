//
//  GradientExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/10/24.
//

import SwiftUI

struct GradientExample: View {
    @State var isToggle: Bool = false
    
    let gradient1 = /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/
    let gradient2 = Gradient(stops: [
        .init(color: .cyan, location: 0),
        .init(color: .yellow, location: 0.3), 
        .init(color: .green, location: 1)
    ])
    
    var body: some View {
        VStack {
            LinearGradient(gradient: gradient1, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
            LinearGradient(gradient: gradient2, startPoint: .top, endPoint: .bottom)
            RadialGradient(gradient: gradient1, center: .center, startRadius: 0, endRadius: 100)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    GradientExample()
}
