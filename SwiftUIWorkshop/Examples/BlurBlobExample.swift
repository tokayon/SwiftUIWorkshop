//
//  BlurBlobExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 4/18/25.
//

import Foundation
import SwiftUI

struct BlurBlobExample: View {
    @State private var selectedColors: Set<Color> = [.blue, .cyan, .indigo, .mint] // Initial selection
        
    // Define available colors
    private let availableColors: [Color] = [
        .blue, .cyan, .indigo, .mint, .purple, .teal, .green,
        .yellow, .orange, .pink, .red, .brown, .gray, .black
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // Blob background
            ZStack {
                ForEach(0..<15, id: \.self) { _ in
                    if let color = selectedColors.randomElement() {
                        BackgroundBlob(color: color)
                    }
                }
            }
            .ignoresSafeArea()
            
            // Color selection grid
            VStack(spacing: 10) {
                ForEach(0..<2) { row in
                    HStack(spacing: 10) {
                        ForEach(0..<7) { column in
                            let index = row * 7 + column
                            if index < availableColors.count {
                                let color = availableColors[index]
                                ColorSquare(color: color, isSelected: selectedColors.contains(color)) {
                                    if selectedColors.contains(color) {
                                        selectedColors.remove(color)
                                    } else {
                                        selectedColors.insert(color)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.bottom, 30)
        }
    }
}

struct BackgroundBlob: View {
    @State private var rotationAmount = 0.0
    let alignment: Alignment = [.topLeading, .topTrailing, .bottomLeading, .bottomTrailing].randomElement()!
    let color: Color

    var body: some View {
        Ellipse()
            .fill(color)
            .frame(width: .random(in: 200...500), height: .random(in: 200...500))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: alignment)
            .offset(x: .random(in: -400...400), y: .random(in: -400...400))
            .rotationEffect(.degrees(rotationAmount))
            .animation(.linear(duration: .random(in: 2...4)) .repeatForever(), value: rotationAmount)
            .onAppear {
                rotationAmount = .random(in: -360...360)
            }
            .blur(radius: 75)
    }
}

struct ColorSquare: View {
    let color: Color
    let isSelected: Bool
    let onTap: () -> Void
    
    var body: some View {
        color
            .frame(width: 40, height: 40)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(isSelected ? Color.white : Color.clear, lineWidth: 4)
            )
            .onTapGesture(perform: onTap)
    }
}
