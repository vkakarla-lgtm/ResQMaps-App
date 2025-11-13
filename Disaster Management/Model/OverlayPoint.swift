//
//  OverlayPoint.swift
//  
//
//  Created by Manas Maligi on 4/18/24.
//

import Foundation
import Foundation
import SwiftUI
import CoreLocation
struct OverlayPoint: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
}
