//
//  ContentView.swift
//  Landmarks
//  Created by Aditya Tyagi  on 21/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarkList()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
