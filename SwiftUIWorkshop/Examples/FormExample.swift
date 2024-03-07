//
//  FormExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/7/24.
//

import SwiftUI

struct FormExample: View {
    @State var isToggle: Bool = false
    
    var body: some View {
        Form(content: {
            Section("Hello") {
                Toggle(isOn: $isToggle, label: {
                    Text("Label")
                })
                Toggle(isOn: $isToggle, label: {
                    Text("Label")
                })
            }
            .listRowSeparatorTint(.blue)
            .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 20))
        })
        .scrollContentBackground(.hidden)
        .background(Color.red)
        .tint(.black)
    }
}

#Preview {
    FormExample()
}
   
