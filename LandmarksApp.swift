//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Aditya Tyagi  on 21/01/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
