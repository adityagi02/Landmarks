//
//   MapView.swift
//  Landmarks
//
//  Created by Aditya Tyagi  on 22/01/22.
//

import SwiftUI
import MapKit

struct MapView: View {
     var coordinate: CLLocationCoordinate2D
    
     @State private var region = MKCoordinateRegion()
    
    
     var body: some View {
         Map(coordinateRegion: $region)
             .onAppear {
                 setRegoin(coordinate)
             }
         
     }
    
    
    private func setRegoin(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.059084, longitude: -118.125473))
    }
}
