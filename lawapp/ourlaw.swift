//
//  ourlaw.swift
//  lawapp
//
//  Created by rana omar zaheri on 17/06/1444 AH.
//

import SwiftUI
import MapKit

struct ourlaw: View {
    @StateObject private var mapAPI = MapAPI()
    @State private var showPopover: Bool = false

    var body: some View {
        ZStack{
            VStack(spacing:-12){
                ContentView()
                
                Map(coordinateRegion: $mapAPI.region, annotationItems: mapAPI.locations) { location in
                    MapMarker(coordinate: location.coordinate, tint: .blue)
                }
                .ignoresSafeArea()
                
                
                Text("Show The Law")
                
                    .frame(maxWidth:120, alignment: .leading)
                    .frame(width: 23, height: 2)
                    .onTapGesture {
                        self.showPopover = true
                        
                    }
                if(showPopover){
                    popup1(title: "Error", message: "Sorry, that email address is already used!", buttonText: "OK", showPopover: $showPopover)
                    
                }
                
            }
            
        }
    }
}

struct ourlaw_Previews: PreviewProvider {
    static var previews: some View {
        ourlaw()
    }
}
