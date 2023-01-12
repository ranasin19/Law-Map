
  //UserMapView.swift
  //lawapp

  //Created by rana omar zaheri on 15/06/1444 AH.



import SwiftUI
import MapKit

struct UserMapView: View {
    @State var searchText: String = ""
    @State private var showSheet: Bool = false
    @State private var showPopover: Bool = false
    @StateObject private var mapAPI = MapAPI()

    
    var body: some View {
        VStack{
            HStack(spacing:-25){
               
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 13)
                        .stroke(Color.gray)
                        .opacity(0.4)
                        .frame(width: 300, height: 38)
                        .shadow(
                            color: Color(hue: 0.092, saturation: 0.27, brightness: 0.675),
                            radius: 0, x:0, y: 0)
                    
                    HStack(spacing:9){
                        Spacer()
                        Spacer()
                        Spacer()
                        Image(systemName: "location")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.blue)
                        
                        TextField("Search Location", text: $searchText)
                            .accessibilityLabel(Text("Search Location"))
                            .foregroundColor(Color.black)
                            .font(.headline)
                            
                            .onTapGesture {
                                self.showPopover = true
                            }
                       
                        
                        
                        
                        
                    }
                    .padding(-9)
                    
                }
                    ContentView()
                
            }
          
            ZStack {
                Map(coordinateRegion: $mapAPI.region, annotationItems: mapAPI.locations) { location in
                    MapMarker(coordinate: location.coordinate, tint: .blue)
                }
                .ignoresSafeArea()
                
                
                    VStack{
                      
 
                            if(showPopover){
                                if(searchText == "Olaya"){
                                    popup1(title: "Error", message: "Sorry", buttonText: "OK", showPopover: $showPopover)
                                    
                                }
                                
                            }
                            
                        if(showPopover){
                            if(searchText == "العليا"){
                                popup1(title: "Error", message: "Sorry", buttonText: "OK", showPopover: $showPopover)
                                
                            }
                        }
                    }
                
                
            }
            
            
            
            
        }
        }
    
    }
    
struct UserMapView_Previews: PreviewProvider {
    static var previews: some View {
        UserMapView()
    }
}
