//
//  LocationDataManager.swift
//  CoreLocationSwiftUITutorial
//
//  Created by Cole Dennis on 9/21/22.
//

import Foundation
import CoreLocation

class LocationDataManager : NSObject, CLLocationManagerDelegate {
    var locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .authorizedWhenInUse:  // Location services are available.
            // Insert code here of what should happen when Location services are authorized
            locationManager.requestLocation()
            break
            
        case .restricted, .denied:  // Location services currently unavailable.
            // Insert code here of what should happen when Location services are NOT authorized
            break
            
        case .notDetermined:        // Authorization not determined yet.
            manager.requestWhenInUseAuthorization()
            break
            
        default:
            break
        }
    }
    
    
}
