//
//  ListExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/14/24.
//

import SwiftUI

struct RowData: Identifiable {
    var id = UUID()
    var title = "Name"
    var isExpanded = false
}

struct ListExample: View {
    @State var rowData = [RowData(), RowData(), RowData()]
    var body: some View {
        NavigationView {
            List($rowData) { row in
                Section(row.title.wrappedValue, isExpanded: row.isExpanded) {
                    Text("123")
                    Text("123")
                    NavigationLink(destination: Text("123")) {
                        Text("Navigate")
                    }
                }
                .listRowSeparator(.hidden)
                .listRowSeparatorTint(.red)
                .listRowBackground(Color.orange)
                .listRowInsets(EdgeInsets())
                
                Section {
                    Text("Title section")
                } header: {
                    Text("Header")
                }
            }
            .listStyle(.sidebar)
            .scrollContentBackground(.hidden)
            .background(.cyan)
        }
    }
}

#Preview {
    ListExample()
}
