//
//  LazyStackExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/13/24.
//

import SwiftUI

struct LazyStackExample: View {
    
    var body: some View {
        ScrollView {
            LazyVStack(pinnedViews: [.sectionHeaders]) {
                ForEach(0 ..< 100) {
                    index in
                    Section {
                        Image("TestImage")
                            .resizable()
                            .scaledToFit()
                    } header: {
                        Text("Section \(index+1)")
                    }
                }
            }
        }
        .background(.gray)
    }
}

#Preview {
    LazyStackExample()
}
