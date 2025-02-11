//
//  LocationManager.swift
//  weatherApp
//
//  Created by Berkay Veysel Ayköse on 11.02.2025.
//

import Foundation
import CoreLocation

class LocationManager : NSObject, CLLocationManagerDelegate, ObservableObject{
    
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocation() {
        isLoading = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("konum alınırken hata oluştu", error)
        isLoading = false
    }
}
