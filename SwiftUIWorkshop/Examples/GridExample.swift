//
//  GridExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 4/3/25.
//

import Foundation
import SwiftUI

struct GridExample: View {
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: [
                    GridItem(.fixed(100)),
                    GridItem(.flexible(minimum: 50, maximum: .infinity)),
                    GridItem(.flexible(minimum: 50, maximum: .infinity))
                ],
                alignment: .leading,
                spacing: 10
            ) {
                ForEach(0..<1000, id: \.self) { column in
                    Text("\(column)")
                        .frame(height: 100)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.2))
                        .border(Color.gray)
                }
            }.padding()
        }
    }
}
