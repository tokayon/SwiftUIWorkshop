//
//  ColorPickerExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/6/24.
//

import SwiftUI

struct ColorPickerExample: View {
    @State var selectedColor = Color.cyan
    var body: some View {
        selectedColor
        ColorPicker(selection: $selectedColor, supportsOpacity: true) {
            Text("Select your color")
        }
        .padding()
    }
}

#Preview {
    ColorPickerExample()
    
}
