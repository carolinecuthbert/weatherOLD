import SwiftUI

struct MemoryGame: View {
    var body: some View {

        VStack {
            Text("Match the cards!")
                .font(.title2)
                .bold()
            
                .padding()
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
} // ContentView

#Preview {
    MemoryGame()
}
