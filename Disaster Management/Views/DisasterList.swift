//
//  DisasterList.swift
//
//
//  Created by Manas Maligi on 04/05/24.
//

import SwiftUI

struct DisasterList: View {
    var body: some View {
     
            NavigationSplitView {
                List(disasters) { disaster in
                    NavigationLink {
                        DisasterDetail(disaster: disaster).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    } label: {
                        DisasterRow(disaster: disaster,label:"")
                    }
                }
                .navigationTitle("Recent Hurricanes").font(.body)
            } detail: {
                
            }
            
        }
}

#Preview {
    DisasterList()
}
