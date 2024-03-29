//
//  ScrollViewExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/29/24.
//

import SwiftUI

struct ScrollViewExample: View {
    var body: some View {
        ScrollViewReader { proxy in
            VStack {
                ScrollView {
                    VStack {
                        ForEach(0...200, id: \.self) { index in
                            Text("Row \(index)")
                                .id(index)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .scrollIndicators(.automatic)
                
                Button {
                    withAnimation {
                        proxy.scrollTo(70, anchor: .top)
                    }
                } label: {
                    Text("Goto 70")
                }
            }
        }
        
    }
}

#Preview {
    ScrollViewExample()
}
