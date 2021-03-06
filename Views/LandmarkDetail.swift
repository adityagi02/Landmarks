//
//  LandmarkDetail.swift
//  Landmarks
//  Pasing Data into Child Views
//  Created by Aditya Tyagi  on 23/01/22.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int{
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
                .padding(.horizontal, 53)
            
            VStack(alignment: .leading){
                HStack{
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.gray)
                    .bold()
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
               
            
            HStack {
                Text(landmark.park)
                    .font(.subheadline)
                Spacer()
                Text(landmark.city)
                    
    
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider()
            
            Text("About \(landmark.name)")
                .font(.title2)
            Text(landmark.description)
                .font(.body)
                .foregroundColor(Color(hue: 0.52, saturation: 0.800, brightness: 0.775, opacity: 3.0))
            
        }
        .padding()
       }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
