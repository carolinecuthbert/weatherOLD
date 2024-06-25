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
    @State private var cityTemp: String = ""
    @State private var latitude: Double = 0.0
    @State private var longitude: Double = 0.0
    @State private var cityName: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter city name", text: $cityTemp, onCommit: {
                viewModel.getCoordinates(for: cityTemp)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            if let weather = weather {
                var temperature = 1.8 * weather.main.temp + 32
                var description = weather.weather.first?.description ?? ""
                
                Button("change location") {
                    if (cityTemp=="") {}
                    else {
                        cityName = cityTemp
                        locChanged = true
                        fetchWeather()
                        temperature = 1.8 * weather.main.temp + 32
                        description = weather.weather.first?.description ?? ""
                    }
                }
                Text("Temperature: \(temperature)°F")
                Text("Description: \(description)")
                if (!locChanged) {
                    Text("Location: \(viewModel.cityName ?? "")")
                } else {
                    Text("Location: \(cityName)")
                }
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
        latitude = location.coordinate.latitude
        longitude = location.coordinate.longitude
        viewModel.getCityName(for: latitude, longitude: longitude)
    }
    
    private func fetchWeather() {
        let weatherService = WeatherService()
        //viewModel.getCoordinates(for: cityTemp)
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
