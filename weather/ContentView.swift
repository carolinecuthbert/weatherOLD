//
//  ContentView.swift
//  weather
//
//  Created by Scholar on 6/21/24.
//
/*
 broken clouds
 clear sky
 light rain
 overcast clouds
 scattered clouds
 thunderstorm with rain
 */


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
    @State private var formal = false
    @State private var athletic = false
    @State private var casual = false
    @State private var editLoc = false
    
    var body: some View {
        VStack {
            var temperature = Int(1.8 * (weather?.main.temp ?? 0.0) + 32)
            var description = weather?.weather.first?.description ?? ""
            if (!editLoc) {
                if (!locChanged) {
                    Text(viewModel.cityName ?? "")
                        .font(.system(size: 45))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                } else {
                    Text(cityName)
                        .font(.system(size: 45))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
                Button("edit location") {
                    self.editLoc = true
                    if (cityTemp=="") {}
                    else {
                        cityName = cityTemp
                        locChanged = true
                        fetchWeather()
                        temperature = Int(1.8 * (weather?.main.temp ?? 0.0) + 32)
                        description = weather?.weather.first?.description ?? ""
                    }
                }
                .foregroundColor(Color("dark blue"))
                Spacer()
                    .frame(height: 30.0)
            } else {
                TextField("Enter city name...", text: $cityTemp, onCommit: {
                    viewModel.getCoordinates(for: cityTemp)
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40.0)
                Button("enter") {
                    if (cityTemp=="") {}
                    else {
                        self.editLoc = false
                        cityName = cityTemp
                        locChanged = true
                        fetchWeather()
                        temperature = Int(1.8 * (weather?.main.temp ?? 0.0) + 32)
                        description = weather?.weather.first?.description ?? ""
                        cityTemp = ""
                    }
                }
                .foregroundColor(Color("dark blue"))
                .font(.system(size: 25))
                Spacer()
                    .frame(height: 33.0)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15.0)
                    .frame(width: 300.0)
                    .frame(height: 200.0)
                    .foregroundColor(Color ("light blue"))
                    .shadow(radius: 5.0)
                if (editLoc) {}
                else {
                    VStack{
                        Text("\(temperature)°F")
                            .font(.system(size: 60))
                            .multilineTextAlignment(.center)
                        Text(description)
                            .font(.system(size: 40))
                            .padding(.horizontal, 60)
                            .multilineTextAlignment(.center)
                    }
                }//end of VStack
            }//end of ZStack
            .padding(.horizontal, 40.0)
            Spacer()
                .frame(height: 20.0)
            Text("Occasion:")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            HStack{
                if (formal) {
                    Button("Formal") {
                        self.formal = true
                        self.athletic = false
                        self.casual = false
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .foregroundStyle(Color.black)
                    .tint(Color("for"))
                    .border(Color.black, width: 4)
                } else {
                    Button("Formal") {
                        self.formal = true
                        self.athletic = false
                        self.casual = false
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .foregroundStyle(Color.black)
                    .tint(Color("for"))
                }
                Spacer()
                    .frame(width: 20.0)
                if (athletic) {
                    Button("Athletic") {
                        self.athletic = true
                        self.formal = false
                        self.casual = false
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .foregroundStyle(Color.black)
                    .tint(Color("ath"))
                    .border(Color.black, width: 4)
                } else {
                    Button("Athletic") {
                        self.athletic = true
                        self.formal = false
                        self.casual = false
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .foregroundStyle(Color.black)
                    .tint(Color("ath"))
                }
                Spacer()
                    .frame(width: 20.0)
                if (casual) {
                    Button("Casual") {
                        self.casual = true
                        self.formal = false
                        self.athletic = false
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .foregroundStyle(Color.black)
                    .tint(Color("cas"))
                    .border(Color.black, width: 4)
                } else {
                    Button("Casual") {
                        self.casual = true
                        self.formal = false
                        self.athletic = false
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .foregroundStyle(Color.black)
                    .tint(Color("cas"))
                }
            }//end of HStack
            Spacer()
            HStack{
                Text("Recommended:")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                Spacer()
            }.padding(25.0)
        }//end of VStack
        .padding(.top, 10.0)
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
    }//end of body
    
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
}//end of view

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
