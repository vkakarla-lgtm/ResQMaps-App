//
//  BottomNavigation.swift
//  Landmarks
//
//  Created by Dwarakanath Maligi on 4/21/24.
//

import SwiftUI

struct BottomNavigation: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var joke: String = ""
    @State var landingpage = false
    @State var logIn = false
    var body: some View {
        
        TabView{
            DisasterList()
                .tabItem (){
                    Image(systemName: "house.circle")
                        .controlSize(.mini)
                        .padding()
                        .background(.white)
                        .foregroundColor(.red)
                        .cornerRadius(.infinity)
                }
            MapView(coordinateVar: disasters[0].locationCoordinate, mapPoints: disasters[0].markerCoorindartes)
                .tabItem {
                    Image(systemName: "questionmark.circle")
                        .controlSize(.mini)
                        .padding()
                        .background(.white)
                        .foregroundColor(.red)
                        .cornerRadius(.infinity)
                }
        }
    }
}

#Preview {
    BottomNavigation()
}
struct Joke: Codable {
    let value: String
}
