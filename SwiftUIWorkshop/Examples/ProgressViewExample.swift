//
//  ProgressViewExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/23/24.
//

import SwiftUI

struct ProgressViewExample: View {
    @State private var currentValue = 0.0
    private var totalValue = 100.0
    private var incrementValue = 4.0
    
    var body: some View {
        VStack {
            ProgressView()
                .progressViewStyle(.circular)
                .tint(.red)
                .scaleEffect(2)
            Spacer()
                .frame(height: 100)
            ProgressView(value: currentValue, total: 100)
                .progressViewStyle(.linear)
                .tint(.green)
                .padding()
                .onAppear() {
                    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                        currentValue += incrementValue
                        currentValue = currentValue > totalValue ? incrementValue : currentValue
                    }
                }
        }
    }
}

#Preview {
    ProgressViewExample()
}
