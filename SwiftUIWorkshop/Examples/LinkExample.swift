//
//  LinkExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/14/24.
//

import SwiftUI

struct LinkExample: View {
    let url = URL(string: "https://www.archet.app/")!
    var body: some View {
        Link(destination: url) {
            Text("Open URL")
        }
    }
}

#Preview {
    LinkExample()
}
