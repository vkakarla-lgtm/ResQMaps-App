//
//  LandingPage.swift
//  
//
//  Created by Manas Maligi on 4/20/24.
//

import SwiftUI

struct LandingPage: View {
 
    var body: some View {
        ZStack{
          Color.gray
               .ignoresSafeArea()
            //   var result = landmarks.filter({$0.state == "Texas"})
            //  Text(title).font(.headline)
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
                InfoView(info: hazards).navigationTitle("Support")
                    .tabItem {
                        Image(systemName: "questionmark.circle")
                            .controlSize(.mini)
                            .padding()
                            .background(.white)
                            .foregroundColor(.red)
                            .cornerRadius(.infinity)
                    }
                MapView(coordinateVar: disasters[0].locationCoordinate, mapPoints: disasters[0].markerCoorindartes)
                    .navigationTitle("Map View")
                
                    .tabItem {
                        Image(systemName: "map")
                            .controlSize(.mini)
                            .padding()
                            .background(.white)
                            .foregroundColor(.red)
                            .cornerRadius(.infinity)
                    }
                
            }
        }
    }
        
}

#Preview {
    LandingPage()
}
