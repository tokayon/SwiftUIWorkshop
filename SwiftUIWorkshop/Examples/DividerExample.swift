//
//  DividerExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/6/24.
//

import SwiftUI

struct DividerExample: View {

    var body: some View {
        VStack(spacing: 0) {
            Color.init(white: 0.2)
                .ignoresSafeArea()
                .overlay {
                    VStack {
                        Divider()
                            .frame(height: 3)
                            .overlay(Color.green)
                    }
                }
                .frame(maxHeight: .infinity)
            Color.init(white: 0.3)
                .ignoresSafeArea()
                .overlay {
                    HStack {
                        Divider()
                            .frame(width: 3)
                            .overlay(Color.yellow)
                    }
                }
                .frame(maxHeight: .infinity)
        }
    }
}

#Preview {
    DividerExample()
    
}
