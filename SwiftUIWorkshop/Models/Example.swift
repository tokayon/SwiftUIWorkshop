//
//  Example.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/3/24.
//

import SwiftUI

struct Example: View, Identifiable {
    let id = UUID()
    var title: String
    var content: AnyView
    
    init<V: View>(title: String, content: V) {
        self.title = title
        self.content = AnyView(content)
    }
    
    var body: some View {
        content
    }
}
