//
//  LandmarkRow.swift
//  Landmarks
//  Creating the Row View
//  Customizing the Row Preview
//  Creating the List of Landmarks
//  Making the List Dynamic
//  Created by Aditya Tyagi  on 23/01/22.

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
       HStack {
           landmark.image
               .resizable()
               .frame(width: 50, height: 50)
           
           Text(landmark.name)
           
           Spacer()
           
           if(landmark.isFavorite){
               Image(systemName: "star.fill")
                   .foregroundColor(.yellow)
           }
       }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        } .previewLayout(.fixed(width: 300, height: 70))
    }
}
