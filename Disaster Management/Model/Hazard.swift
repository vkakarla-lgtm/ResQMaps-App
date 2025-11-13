//
//  Hazards.swift
//
//
//  Created by Manas Maligi on 4/22/24.
//

import Foundation
import SwiftUI
import CoreLocation
struct Hazard: Hashable, Codable, Identifiable{
    
    var id: Int
    var type: String
    var info: Info
    var imageName: String
    var image: Image{
        Image(imageName)
    }
   
    struct Info: Hashable, Codable{
        var safety: String
        var shelter: String
        var thingstopack: String
        var emergencynum: String
  
    }
    
}


