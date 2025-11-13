//
//  Disaster.swift
//
//
//  Created by Manas Maligi on 04/05/24.
//

import Foundation
import SwiftUI
import CoreLocation
struct Disaster: Hashable, Codable, Identifiable{
    
    var id: Int
    var name: String
    var category: String
    var city: String
    var state: String
    var description: String
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    var markerCoorindartes: [mappoint]
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
    struct mappoint: Hashable, Codable, Identifiable{
        var id = UUID()
        var desc: String
        var latitude: Double
        var longitude: Double
        init(from decoder: any Decoder) throws {
            let container: KeyedDecodingContainer<Disaster.mappoint.CodingKeys> = try decoder.container(keyedBy: Disaster.mappoint.CodingKeys.self)
            self.id = UUID()
            self.desc = try container.decode(String.self, forKey: Disaster.mappoint.CodingKeys.desc)
            self.latitude = try container.decode(Double.self, forKey: Disaster.mappoint.CodingKeys.latitude)
            self.longitude = try container.decode(Double.self, forKey: Disaster.mappoint.CodingKeys.longitude)
        }
    }
    
}


