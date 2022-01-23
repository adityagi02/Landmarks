//
//  Landmark.swift
//  Landmarks
//
//  Created by Aditya Tyagi  on 23/01/22.
//

import Foundation
import SwiftUI
struct Landmark: Hashable, Codable{
    var id: Int
    var name: String
    var park: String
    var city: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    
    
}
