//
//  ShaderExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 4/5/25.
//

import Foundation
import SwiftUI

struct ShaderExample: View {
    var body: some View {
        Text("Shader Example")
            .font(.title)
            .padding()
        
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    image
                    Text("Original")
                }
                VStack {
                    image
                        .colorEffect(ShaderLibrary.recolor())
                    Text("recolor")
                }
                VStack {
                    image
                        .colorEffect(ShaderLibrary.gradientColor())
                    Text("gradient color")
                }
                VStack {
                    image
                        .visualEffect { content, proxy in
                            content
                                .colorEffect(ShaderLibrary.relativeRecolor(.float2(proxy.size)))
                        }
                    Text("relative color")
                }
                .padding()
                .background(.blue)
                .cornerRadius(50)
                
                VStack {
                    image
                        .visualEffect { content, proxy in
                            content
                                .colorEffect(ShaderLibrary.rainbowRecolor(.float2(proxy.size)))
                        }
                    Text("rainbow")
                }
            }
        }
        .scrollIndicators(.hidden)
    }
    
    var image: some View {
        Image(uiImage: .logo)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200)
    }
}
