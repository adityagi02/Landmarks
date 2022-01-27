//
//  LandmarkList.swift
//  Landmarks
//  Setting Up Navigation Between List and Detail
//  Passing Data into Child Views
//  Generated Previews Dynamically
//  Created by Aditya Tyagi  on 23/01/22.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoriteOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
       LandmarkList()
        }
    }

