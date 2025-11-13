//
//  InfoDetail.swift
//
//
//  Created by Manas Maligi on 4/22/24.
//

import SwiftUI

struct InfoDetail: View {
    var info: Hazard
       var body: some View {
           let markdownText = LocalizedStringKey.init (info.info.safety)

        VStack{
            Divider()
            HStack{
                Image(systemName:info.imageName)
                    .background(.green)
                    .foregroundColor(.white)
                Text(info.type)
                    
            }
            Divider()
            HStack{
                Image(systemName:"house.lodge")
                    .background(.white)
                    .foregroundColor(.green)
                Text("Safety")
            }
            ScrollView {
                Text(markdownText)
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                    
                
            }
            .frame(maxWidth: .infinity, maxHeight: 300, alignment: .center)
            Divider()
            HStack{
                Image(systemName:"phone")
                    .background(.white)
                    .foregroundColor(.green)
                
                Text("Emergency Contacts")
            }
            Link(info.info.emergencynum, destination: URL(string: "tel:\(info.info.emergencynum)")!)
            Divider()
            HStack{
                Image(systemName:"house.circle")
                    .background(.white)
                    .foregroundColor(.green)
               
                Text("Shelter Options")
            }
            Text(info.info.shelter)
            Divider()
            HStack{
                Image(systemName:"backpack")
                    .background(.white)
                    .foregroundColor(.green)
               
                Text("Emergency Supplies")
            }
            Text(info.info.thingstopack)
        }
    }
}

#Preview {
    InfoDetail(info: hazards[1])
}
