//
//  ProjectTransformExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/29/24.
//

import SwiftUI

struct ProjectTransformExample: View {
    @State var rotate: Bool = false
    
    var body: some View {
        Image("TestImage")
            .resizable()
            .frame(width: 200, height: 200)
            .rotation3DEffect(
                .degrees(rotate ? 90 : 0),
                axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
            )
        Button {
            withAnimation {
                rotate.toggle()
            }
        } label: {
            Text("Rotate")
        }
    }
}

#Preview {
    ProjectTransformExample()
}
