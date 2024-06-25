//
//  ContentView.swift
//  weather
//
//  Created by Scholar on 6/21/24.
//

import SwiftUI
import CoreLocation
import Foundation

struct ContentView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var weather: WeatherResponse?
    @State private var locChanged = false
    @StateObject private var viewModel = LocationViewModel()
    @State private var city: String = ""
    @State private var latitude: String = ""
    @State private var longitude: String = ""

    var body: some View {
        VStack {
            // Coordinates to City
            TextField("Enter latitude", text: $latitude)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Enter longitude", text: $longitude)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Get City Name") {
                if let lat = Double(latitude), let lon = Double(longitude) {
                    viewModel.getCityName(for: lat, longitude: lon)
                }
            }

            if let cityName = viewModel.cityName {
                Text("City: \(cityName)")
            } else if let errorMessage = viewModel.errorMessage {
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
            }
            
            TextField("Enter city name", text: $city, onCommit: {
                viewModel.getCoordinates(for: city)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            if let weather = weather {
                var temperature = 1.8 * weather.main.temp + 32
                var description = weather.weather.first?.description ?? ""
                
                Button("change location") {
                    locChanged = true
                    fetchWeather()
                    temperature = 1.8 * weather.main.temp + 32
                    description = weather.weather.first?.description ?? ""
                }
                Text("Temperature: \(temperature)°F")
                Text("Description: \(description)")
                Text("Location: \(city)")
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

    //
    //
    //
    //
    //
    //
    //
    //RANDO WEATHER CODE IGNORE
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
