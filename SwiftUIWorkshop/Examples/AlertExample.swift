//
//  AlertExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/4/24.
//

import SwiftUI

struct AlertExample: View {
    @State var showAlert: Bool = false
    
    var body: some View {
        Button {
            showAlert.toggle()
        } label: {
            Text("Show alert")
        }
        .alert("Error", isPresented: $showAlert) {
            Button {
                print("tap ok")
            } label: {
                Text("OK")
            }
        } message: {
            Text("Alert error message")
        }
    }
}

struct AlertMessage {
    var title: String
    var subtitle: String
}

struct AlertDynamicExample: View {
    @State var showAlert: Bool = false
    var alertMessage: AlertMessage = .init(title: "Title", subtitle: "Subtitle")
    var body: some View {
        Button {
            showAlert.toggle()
        } label: {
            Text("Show alert")
        }
        .alert("Error", isPresented: $showAlert, actions: {
            Button("No", role: .cancel) {
                // no action
            }
                       
           Button ("Yes", role: .destructive) {
               //
           }
        }, message: {
            Text("\(alertMessage.title) & \(alertMessage.subtitle)")
        })
    }
}
