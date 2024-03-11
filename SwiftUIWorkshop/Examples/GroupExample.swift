//
//  GroupExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/10/24.
//

import SwiftUI

struct GroupExample: View {
    
    var body: some View {
        groupBody
        groupBoxBody
        customGroupBoxBody
    }
    
    var groupBody: some View {
        Group {
            Text("Test")
            Text("Test")
            Text("Test")
            Text("Test")
        }
    }
    
    var groupBoxBody: some View {
        GroupBox("Group") {
            Text("Test")
            Text("Test")
            Text("Test")
            Text("Test")
        }
        .foregroundStyle(.red)
        .padding()
    }
    
    var customGroupBoxBody: some View {
        GroupBox("Group") {
            Text("Test")
            Text("Test")
            Text("Test")
            Text("Test")
        }
        .padding()
        .groupBoxStyle(CustomGroupBoxStyle())
    }

}

struct CustomGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding([.top], 10)
            .padding()
            .background(.red)
            .cornerRadius(15)
            .overlay(alignment: .topLeading) {
                configuration.label
                    .padding(10)
            }
    }
}

#Preview {
    GroupExample()
}
