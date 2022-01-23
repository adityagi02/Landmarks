//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Aditya Tyagi  on 23/01/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
                .padding(.horizontal, 53)
            
            Text("Monterey Park")
                .font(.title)
                .foregroundColor(.blue)
                .bold()
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    
    
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider()
            
            Text("About Monterey Park")
                .font(.title2)
            Text("Monterey Park is a city located in the western San Gabriel Valley region of Los Angeles County, California in the Los Angeles metropolitan area, United States, approximately seven miles from the Downtown Los Angeles civic center. The city's motto is \"Pride in the past, Faith in the future\". ")
                .font(.body)
                .foregroundColor(Color(hue: 0.52, saturation: 0.800, brightness: 0.775, opacity: 3.0))
            
        }
        .padding()
        
        Spacer()
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
