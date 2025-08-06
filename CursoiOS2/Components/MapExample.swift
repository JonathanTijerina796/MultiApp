//
//  MapExample.swift
//  CursoiOS2
//
//  Created by Jona on 31/07/25.
//

import SwiftUI
import MapKit
struct MapExample: View {
    
    @State var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 25.6535436, longitude: -100.1354215)
            
            ,span:MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        )
    )
    
    
    var body: some View {
        
        ZStack{
            Map(position: $position)
                .mapStyle(.hybrid(elevation: .realistic, showsTraffic: true))
            
            VStack{
                Spacer()
                HStack{
                    
                    
                    Button("ir al sur"){
                        withAnimation{
                            position = MapCameraPosition.region(
                                MKCoordinateRegion(
                                    center: CLLocationCoordinate2D(latitude: 25.57797, longitude: -100.2521095),
                                    
                                    span:MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
                                )
                            )
                        }
                    }.padding(32).background(.white).padding()
                    
                    
                    Button("ir al norte"){
                        withAnimation{
                            position = MapCameraPosition.region(
                                MKCoordinateRegion(
                                    center: CLLocationCoordinate2D(latitude: 25.6535436, longitude: -100.1354215),
                                    
                                    span:MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
                                )
                            )
                        }
                    }.padding(32).background(.white).padding()
                }
            }
        }
        
        
    }
}

#Preview {
    MapExample()
}
