//
//  LocationViewModel.swift
//  weather
//
//  Created by Scholar on 6/25/24.
//

import Foundation
import CoreLocation

class LocationViewModel: ObservableObject {
    @Published var latitude: Double?
    @Published var longitude: Double?
    @Published var errorMessage: String?
    
    private let geocoder = CLGeocoder()
    
    func getCoordinates(for city: String) {
        geocoder.geocodeAddressString(city) { [weak self] (placemarks, error) in
            if let error = error {
                DispatchQueue.main.async {
                    self?.errorMessage = "Geocoding error: \(error.localizedDescription)"
                }
                return
            }
            
            guard let placemark = placemarks?.first,
                  let location = placemark.location else {
                DispatchQueue.main.async {
                    self?.errorMessage = "Location not found"
                }
                return
            }
            
            DispatchQueue.main.async {
                self?.latitude = location.coordinate.latitude
                self?.longitude = location.coordinate.longitude
                self?.errorMessage = nil
            }
        }
    }
}
