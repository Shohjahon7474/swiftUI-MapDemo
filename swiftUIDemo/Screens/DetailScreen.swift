//
//  DetailScreen.swift
//  swiftUIDemo
//
//  Created by Shohjahon Numonovich on 4/4/22.
//

import SwiftUI
import MapKit

struct PinItem : Identifiable{
    
    let id = UUID()
    let coordinate:CLLocationCoordinate2D
}

struct DetailScreen: View {
    
    @State var region = MKCoordinateRegion(center: .init(latitude: 37.334722, longitude: -122.008889),latitudinalMeters: 300,longitudinalMeters: 300)
    @State var pin = PinItem(coordinate: .init(latitude: 37.334722, longitude: -122.008889))
    // Ayrim Sababga kura O'zimni Locatsiyamni beraolmayman
                             
    var body: some View {
        Map(coordinateRegion: $region,
            showsUserLocation: true,
            userTrackingMode: nil,
            annotationItems: [pin]
        ){ item in
            MapMarker(coordinate: item.coordinate)
        }
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}
