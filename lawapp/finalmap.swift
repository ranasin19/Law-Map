//
//  finalmap.swift
//  lawapp
//
//  Created by rana omar zaheri on 18/06/1444 AH.
//

import SwiftUI
import CoreLocationUI
import MapKit
struct finalmap: View {
    @StateObject var locationManager = LocationManager()
    @State private var showPopover: Bool = false
    var body: some View {
        VStack(alignment: .leading){
            ContentView()
            
            ZStack(alignment: .bottom) {
               
                Map(coordinateRegion: $locationManager.region, showsUserLocation: true)
                    .edgesIgnoringSafeArea(.all)
                             
                  
                    VStack{
                        Text("Current location")
                        
                          
                         
                            .symbolVariant(.fill)
                            .frame(width: 200, height: 150)
                            .foregroundColor(.black)
                            .onTapGesture {
                                self.showPopover = true
                                              
                          }
                         if(showPopover) {
                  popup1(title: "Error", message: "Sorry, that email address is already used!", buttonText: "OK", showPopover: $showPopover)
                                      }
                        
                         Spacer()
                    }
                }
            }
        }
    }
    
                             
                             
struct finalmap_Previews: PreviewProvider {
    static var previews: some View {
        finalmap()
    }
}
