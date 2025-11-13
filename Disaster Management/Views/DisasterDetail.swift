//
//  DisasterDetail.swift
//
//
//  Created by Manas Maligi on 04/03/24.
//

import SwiftUI
import MapKit
struct DisasterDetail: View {
    var disaster: Disaster
    
    var body: some View {
        let markdownText = LocalizedStringKey.init (disaster.description)
        VStack {
            
            NavigationLink {
                MapView(coordinateVar: disaster.locationCoordinate,mapPoints: disaster.markerCoorindartes)
            } label: {
                //DisasterRow(disaster: disaster,label: "Go to Map")
                HStack{
                    Image(systemName: "map.fill")
                    Text("Go to Damage Map")
                }
            }
            
            Divider()
            
            HStack{
                Text("Locaton:").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text(disaster.city)
                Text("Category:").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text(disaster.category)
            }.font(.caption)
            Divider()
            Text("About:").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            ScrollView {
                Text(markdownText)
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                
            }
           // .frame(maxWidth: .infinity)
          .frame(maxWidth: .infinity, maxHeight: 300, alignment: .center)
            
            
          
            Spacer()
            
        }
        .background(Color.white)
   }
    
}

#Preview {
    DisasterDetail(disaster: disasters[0])
}
