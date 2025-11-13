//
//  DisasterRow.swift
//  
//
//  Created by Manas Maligi on 11/26/23.
//


import SwiftUI


struct DisasterRow: View {
    var disaster: Disaster
    var label: String
    
    
    var body: some View {
        HStack {
            Image(systemName: "hurricane.circle")
            Text("\(disaster.name) \(label)")
            Spacer()
        }
    }
}


#Preview{
    Group{
        DisasterRow(disaster: disasters[0],label: "Map")
    }
}
