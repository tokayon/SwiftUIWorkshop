//
//  TimelineExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 4/5/25.
//

import Foundation
import SwiftUI

struct TimelineExample: View {
    @State private var startDate: Date = Date()
    @State private var speed = 10.0
    @State private var strength = 10.0
    @State private var smoothing = 10.0
    
    var body: some View {
        TimelineView(.animation) { timeline in
            let elapsedTime = timeline.date.distance(to: startDate)
            image
                .waveEffect(elapsedTime: elapsedTime, speed: speed, strength: strength, smoothing: smoothing)
        }
        
        VStack {
            LabeledContent("Speed") {
                Slider(value: $speed, in: 0...20)
            }

            LabeledContent("Strength") {
                Slider(value: $strength, in: 0...20)
            }

            LabeledContent("Smoothing") {
                Slider(value: $smoothing, in: 0...20)
            }
        }
        .padding()
    }
    
    var image: some View {
        Image(uiImage: .logo)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200)
    }
}

extension View {
    func waveEffect(elapsedTime: Double = 0, speed: Double = 10, strength: Double = 10, smoothing: Double = 10) -> some View {
        self
            .drawingGroup()
            .distortionEffect(
                ShaderLibrary.wave(
                    .float(elapsedTime),
                    .float(speed),
                    .float(strength),
                    .float(smoothing)
                ),
                maxSampleOffset: CGSize(width: strength, height: strength)
            )
    }
}
