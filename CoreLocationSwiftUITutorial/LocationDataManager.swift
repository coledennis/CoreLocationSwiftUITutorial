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

}
