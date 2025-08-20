//
//  DelayedProgressView.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 8/20/25.
//

import Foundation
import SwiftUI

struct ProgressIndicator<Content: View>: View {
    
    private let isIndicating: Bool
    private let delay: TimeInterval
    private let transition: AnyTransition
    private let content: Content
    
    @State private var isPresented = false
    @State private var pendingTask: Task<Void, Never>?
    
    init(
        _ isIndicating: Bool,
        delay: TimeInterval = 0.5,
        transition: AnyTransition = .scale.combined(with: .opacity),
        @ViewBuilder content: () -> Content
    ) {
        self.isIndicating = isIndicating
        self.delay = delay
        self.transition = transition
        self.content = content()
    }
    
    var body: some View {
        Group {
            if isPresented {
                content.transition(transition)
            }
        }
        .onChange(of: isIndicating) { _, newValue in
            // Cancel any running delay task
            pendingTask?.cancel()
            
            if newValue {
                // Start a new delayed task
                pendingTask = Task {
                    try? await Task.sleep(nanoseconds: UInt64(delay * 1_000_000_000))
                    guard !Task.isCancelled else { return }
                    withAnimation {
                        isPresented = true
                    }
                }
            } else {
                // Hide immediately
                pendingTask = nil
                withAnimation {
                    isPresented = false
                }
            }
        }
    }
}

struct DelayedProgressViewExample: View {
    @State private var isIndicating: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            ProgressIndicator(isIndicating) {
                ProgressView()
                    .controlSize(.extraLarge)
            }
            
            Button("Tap me") {
                isIndicating.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
