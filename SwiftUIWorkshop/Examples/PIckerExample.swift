//
//  PIckerExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/19/24.
//

import SwiftUI

struct PIckerExample: View {
    @State var selectedStyle: CustomPickerStyle = .inline
    var body: some View {
        NavigationView {
            AnyView(
                Picker("Picker", selection: $selectedStyle) {
                    ForEach(CustomPickerStyle.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(selectedStyle.style)
                )
            .padding()
        }
        
        Text(selectedStyle.rawValue)
    }
}

enum CustomPickerStyle: String, Hashable, CaseIterable {
    case inline = "inline"
    case palette = "palette"
    case navigationLink = "navigation"
    case menu = "menu"
    
    var style: any PickerStyle {
        switch self {
        case .inline:
            return .inline
        case .palette:
            return .palette
        case .navigationLink:
            return .navigationLink
        case .menu:
            return .menu
        }
    }
}

#Preview {
    PIckerExample()
}
