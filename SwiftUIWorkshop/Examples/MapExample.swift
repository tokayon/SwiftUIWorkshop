//
//  MapExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/16/24.
//

import SwiftUI
import MapKit

struct MapExample: View {
    var location = CLLocationCoordinate2D(latitude: 37.8199, longitude: -122.4783)
    var location2 = CLLocationCoordinate2D(latitude: 38.8199, longitude: -124.4783)
    
    @State var currentPosition: MapCameraPosition = .region(.init(center: CLLocationCoordinate2D(latitude: 37.8199, longitude: -122.4783), span: .init(latitudeDelta: 1, longitudeDelta: 1)))
    
    var body: some View {
        VStack {
            map1()
            map2()
            map3()
        }
    }
    
    private func map1() -> some View {
        Map(position: $currentPosition) {
            Annotation("Test", coordinate: location) {
                Text("Title")
                Image(systemName: "circle")
            }
        }
        .mapControls({
            MapUserLocationButton()
        })
    }
    
    private func map2() -> some View {
        Map(position: $currentPosition) {
            Marker("Marker", systemImage: "circle", coordinate: location)
        }
        .mapStyle(.standard(elevation: .realistic, pointsOfInterest: [.bank], showsTraffic: true))
    }
    
    private func map3() -> some View {
        Map(position: $currentPosition) {
            MapPolyline(points: [.init(location), .init(location2)])
                .stroke(Color.red, lineWidth: 2)
        }
        .mapStyle(.hybrid)
    }
}

#Preview {
    MapExample()
}
