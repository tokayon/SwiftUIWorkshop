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
    var view: AnyView
    
    var body: some View {
        view
    }
}
