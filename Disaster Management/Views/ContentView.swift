//
//  ContentView.swift
//  
//
//  Created by Manas Maligi on 04/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Label("Damange by Location", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            Spacer()
            DisasterList()
        }
    }
        
}

#Preview {
    ContentView()
}
