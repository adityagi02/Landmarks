//
//   MapView.swift
//  Landmarks
//
//  Created by Aditya Tyagi  on 22/01/22.
//

import SwiftUI
import MapKit

struct MapView: View {
     @State private var region = MKCoordinateRegion(
      center: CLLocationCoordinate2D( latitude: 34.059084, longitude: -118.125473), span:  MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
      )
     var body: some View {
         Map(coordinateRegion: $region)
     }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
