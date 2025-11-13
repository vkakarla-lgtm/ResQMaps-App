//
//  MapView.swift
//
//
//  Created by Manas Maligi on 04/05/2024.
//
import SwiftUI
import MapKit

struct MapView: View {
  //  @State private var position = MapCameraPosition.automatic
    var coordinateVar: CLLocationCoordinate2D
    var mapPoints:[Disaster.mappoint]
    
    struct Location: Identifiable {
        let id = UUID()
        var name: String
        var coordinate: CLLocationCoordinate2D
    }
    let position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    )
    /*   var locations =  [Location(name:"1",coordinate:CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)), Location(name:"2",coordinate: CLLocationCoordinate2D(latitude: 37.3352, longitude: -122.0322)), Location(name:"3",coordinate:CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437))
     ]
     let parkingLotPoints :[MKMapPoint] = [
     MKMapPoint(CLLocationCoordinate2DMake(38.96914502883885, -77.541714900002)),
     MKMapPoint(CLLocationCoordinate2DMake(38.9690021794617, -77.5398530770446)),
     MKMapPoint(CLLocationCoordinate2DMake(38.96469751638902, -77.54014704908673)),
     MKMapPoint(CLLocationCoordinate2DMake(38.96524037547702, -77.5419476278679))]*/
    
    var body: some View {
        // Create an MKMapView
        VStack{
            /* Map(initialPosition: .region(regionVar))
             .mapStyle(.imagery)
             .onMapCameraChange (frequency: .onEnd){
             context in
             print(context.region)
             }*/
            Map (){
                ForEach(mapPoints) {
                    point in
                    Marker("",systemImage: "house.circle",coordinate: CLLocationCoordinate2D(latitude: point.latitude, longitude: point.longitude))
                        .tint(.red)
                }
                //  MapPolygon(points:  parkingLotPoints)
                //    .foregroundStyle(.pink.opacity(0.7))
            }
            .mapStyle(.hybrid)
            
            
            
        }
    }
    
    
    private var regionVar: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinateVar,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}


#Preview {
    MapView(coordinateVar: CLLocationCoordinate2D(latitude: 38.99287, longitude: -77.52034),mapPoints: disasters[0].markerCoorindartes)
}

