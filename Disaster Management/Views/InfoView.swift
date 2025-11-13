//
//  InfoView.swift
//  
//
//  Created by Manas Maligi on 4/21/24.
//

import SwiftUI
struct InfoView: View {
    var info: [Hazard]
    var body: some View {
        VStack{
            NavigationSplitView {
                List(info) { row in
                    NavigationLink {
                        InfoDetail(info: row)
                    } label: {
                        Text(row.type)
                    }
                } .navigationTitle("Useful Information").font(.subheadline)
            } detail: {
                Text("Select a Location")
            }
        }
    }
    }
    
    #Preview {
        InfoView(info: hazards)
    }
