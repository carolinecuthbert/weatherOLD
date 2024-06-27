import SwiftUI

struct GameView: View {
    @State private var cardz = [Cards] ()
    var body: some View {
        VStack {
            Text("Match the cards!")
                .font(.system(size: 43))
                .bold()
                .padding()
            HStack {
                Button {
                    cardz[0].flipped = true
                } label: {
                    if (cardz[0].flipped) {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
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
            .onAppear(perform: {
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.append(Cards(frontImage: "game", flipped: false))
                cardz.shuffle()
            })
        } // VStack
    } // body
} // end of view

#Preview {
    GameView()
}
