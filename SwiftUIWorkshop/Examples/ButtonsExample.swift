//
//  ButtonsExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/4/24.
//

import SwiftUI

struct ButtonsExample: View {
   
    var body: some View {
        VStack(spacing: 20) {
            Button {
                print("Simple")
            } label: {
                Text("Simple")
            }
            
            Button {
                print("Bordered")
            } label: {
                Text("Bordered")
            }
            .buttonStyle(.bordered)
            
            Button {
                print("BorderedProminent")
            } label: {
                Text("BorderedProminent")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            
            Button {
                print("Borderless")
            } label: {
                Text("Borderless")
            }
            .buttonStyle(.borderless)
            
            Button {
                print("Plain")
            } label: {
                Text("Plain")
            }
            .buttonStyle(.plain)
            
            Button(role: .destructive) {
                print("Destructive")
            } label: {
                Text("Destructive")
            }
            
            Button(role: .destructive) {
                print("Destructive Prominent")
            } label: {
                Text("Destructive Prominent")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            
            Button {
                print("Clickable label")
            } label: {
                Text("Clickable label")
                    .bold()
                    .padding()
                    .background(.cyan)
                    .cornerRadius(20)
            }
            .buttonStyle(.plain)
        }
    }
}

#Preview {
    ButtonsExample()
}
