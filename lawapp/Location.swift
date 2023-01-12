//
//  Location.swift
//  lawapp
//
//  Created by rana omar zaheri on 18/06/1444 AH.
//

//import Foundation
//import CoreLocation
//import MapKit
//
//final class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
//    private let locationManager = CLLocationManager()
//    
//    @Published var location: CLLocationCoordinate2D?
//    @Published var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 24.680913, longitude:  46.683673),
//        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
//    )
//
//    override init() {
//        super.init()
//        locationManager.delegate = self
//    }
//
//    func requestLocation() {
//        locationManager.requestLocation()
//    }
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        guard let location = locations.first else { return }
//        
//        DispatchQueue.main.async {
//            self.location = location.coordinate
//            self.region = MKCoordinateRegion(
//                center: location.coordinate,
//                span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
//            )
//        }
//    }
//    
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        //Handle any errors here...
//        print (error)
//    }
//}
