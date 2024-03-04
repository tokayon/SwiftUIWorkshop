//
//  ActionSheetExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/3/24.
//

import Foundation
import
Foundation
import SwiftUI

struct ActionSheetExample: View {
    @State var sheetPresented: Bool = false
    var body: some View {
        Button {
            sheetPresented.toggle()
        } label: {
            Text("Show Action sheet")
        }
        .confirmationDialog("Confirmation Dialog Title", isPresented: $sheetPresented) {
            Button(role: .destructive) {
                print("action 1")
            } label: {
                Text("Action 1")
            }
            Button {
                print("action 2")
            } label: {
                Text("Action 2")
            }
        }
    }
}

struct DynamicMessage {
    var title: String
}

struct ActionSheetDynamicExample: View {
    @State var sheetPresented: Bool = false
    var message = DynamicMessage(title: "Dynamic title")
    var body: some View {
        Button {
            sheetPresented.toggle()
        } label: {
            Text("Show Action sheet")
        }
        .confirmationDialog("Dialog title", 
                            isPresented: $sheetPresented,
                            presenting: message,
                            actions: { message in
            Button {
                print("action 2")
            } label: {
                Text(message.title)
            }
        })
    }
}
