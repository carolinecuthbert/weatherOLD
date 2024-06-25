//
//  ContentView.swift
//  weather
//
//  Created by Scholar on 6/21/24.
//
//yrehsdfgurejwidhufjnwodihrifguhjn
//hellliufgehjbsdjeiorwjowkgfnfjfreoijfiuerjnreoi

import SwiftUI
import CoreLocation
import Foundation

struct ContentView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var weather: WeatherResponse?
    @State private var locChanged = false
    @StateObject private var viewModel = LocationViewModel()
    @State private var city: String = ""

    var body: some View {
        VStack {
            TextField("Enter city name", text: $city, onCommit: {
                viewModel.getCoordinates(for: city)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            if let latitude = viewModel.latitude, let longitude = viewModel.longitude {
                Text("Latitude: \(latitude)")
                Text("Longitude: \(longitude)")
            } else if let errorMessage = viewModel.errorMessage {
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
            }
            
            
            if let weather = weather {
                var temperature = 1.8 * weather.main.temp + 32
                var description = weather.weather.first?.description ?? ""
                var loc = locationManager.location
               // var lat = loc.coordinate.latitude
                //var long = loc.coordinate.longitude
                
               
                
                
                
                Button("Paris") {
                    locChanged = true
                    fetchWeather()
                    temperature = 1.8 * weather.main.temp + 32
                    description = weather.weather.first?.description ?? ""
                    loc = locationManager.location
                }
                Text("Temperature: \(temperature)°F")
                Text("Description: \(description)")
                Text("Location: \(loc)")
            } else {
                Text("Fetching weather data...")
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        .onAppear {
            if let location = locationManager.location {
                fetchWeather(for: location)
            }
        }
        .onChange(of: locationManager.location) { oldLocation, newLocation in
            if let location = newLocation {
                fetchWeather(for: location)
            }
        }
    }

    private func fetchWeather(for location: CLLocation) {
        let weatherService = WeatherService()
        weatherService.getWeather(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude) { response in
            self.weather = response
        }
    }
    
    private func fetchWeather() {
        let weatherService = WeatherService()
        if let latitude = viewModel.latitude, let longitude = viewModel.longitude {
            weatherService.getWeather(latitude: latitude, longitude: longitude) { response in
                self.weather = response
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func getCoordinate( addressString : String,
                    completionHandler: @escaping(CLLocationCoordinate2D, NSError?) -> Void ) {
    let geocoder = CLGeocoder()
    geocoder.geocodeAddressString(addressString) { (placemarks, error) in
        if error == nil {
            if let placemark = placemarks?[0] {
                let location = placemark.location!

                completionHandler(location.coordinate, nil)
                return
            }
        }

        completionHandler(kCLLocationCoordinate2DInvalid, error as NSError?)
    }
}
/*
@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}*/
