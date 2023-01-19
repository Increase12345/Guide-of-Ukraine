//
//  MapView.swift
//  UkrAppOne
//
//  Created by Nick Pavlov on 1/16/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 50.450001, longitude: 30.523333),
        span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude), content: {
                NavigationLink(destination: Discover(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            })
        }
        .navigationTitle("Locations")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
