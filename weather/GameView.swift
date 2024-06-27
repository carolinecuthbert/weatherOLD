import SwiftUI

struct GameView: View {
    var body: some View {
        VStack {
            Text("Match the cards!")
                .font(.system(size: 43))
                .bold()
                .padding()
            /*HStack{
                NavigationLink(destination: TripsView()) {
                label: do{Image("GoToLists")
                        .resizable()
                    .frame(width: 100.0, height:100.0)}
                }// closes navLink
                NavigationLink(destination: ContentView()) {
                label: do{Image("game")
                        .resizable()
                    .frame(width: 100, height: 100)}
                }//closes navLink
                NavigationLink(destination: DailyView()) {
                label: do{Image("WeatherButton")
                        .resizable()
                    .frame(width: 100, height: 100)}
                }//closes navLink
            }*/
            HStack {
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding(.horizontal) // HStack
            
            HStack {
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding(.horizontal) // HStack
            
            HStack {
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding(.horizontal) // HStack
            
            HStack {
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PlayingCard_Back_Red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding(.horizontal) // HStack
        } // VStack
    } // body
} // end of view

#Preview {
    GameView()
}
