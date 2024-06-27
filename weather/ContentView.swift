// ContentView.swift
// WEAtheR
//
// Created by Scholar on 6/24/24.
//
import SwiftUI
struct ContentView: View {
  var body: some View {
    NavigationStack {
      ZStack {
        Color("light blue")
          .ignoresSafeArea()
        VStack {
          Text("Welcome to")
            .font(.title2)
            .fontWeight(.semibold)
          Text("WEAtheR")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color(hue: 0.538, saturation: 0.526, brightness: 0.603))
          HStack{
            NavigationLink(destination: TripsView()) {
            label: do{Image("GoToLists")
                .resizable()
              .frame(width: 100.0, height:100.0)}
            } // closes navLink
            NavigationLink(destination: Text("Game")) {
            label: do{Image("game")
                .resizable()
              .frame(width: 100, height: 100)}
            }
            //.frame(width: 150.0)
            //.padding(.all, -50.0)
            NavigationLink(destination: DailyView()) {
            label: do{Image("WeatherButton")
                .resizable()
              .frame(width: 100, height: 100)}
            }
            //.padding(.all, -15.0)
            //.frame(width: 160.0, height: 50.0)
            //.frame(width: 100.0, height: -2.0)
            //closes HStack
          }//closes VStack
        }//closes ZStack
      }//closes NavStack
    }//closes body
  }//closes ContentView
}// closes HStack
      #Preview {
        ContentView()
      }
