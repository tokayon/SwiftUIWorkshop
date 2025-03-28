//
//  InternetMonitorExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/27/25.
//

import Foundation
import SwiftUI
import Network

struct InternetMonitorExample: View {
    @State private var isConnected: Bool = true

    var body: some View {
        VStack {
            if isConnected {
                // Main content view
                Text("Online Content")
            } else {
                // Show offline mode view
                OfflineView()
            }
        }
        .onAppear {
            // Start network monitoring (as shown in the previous example)
            startMonitoring()
        }
    }

    private func startMonitoring() {
        let monitor = NWPathMonitor()
        monitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                self.isConnected = (path.status == .satisfied)
            }
        }
        let queue = DispatchQueue(label: "Monitor")
        monitor.start(queue: queue)
    }
}

struct OfflineView: View {
    var body: some View {
        VStack {
            Image(systemName: "wifi.slash")
                .font(.largeTitle)
                .padding()
            Text("You are offline")
                .font(.title)
            Text("Please check your internet connection.")
                .padding()
        }
        .padding()
    }
}
