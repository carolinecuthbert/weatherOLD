import SwiftUI

struct GameView: View {
    @State private var icons = ["RainbowCard", "SunnyCard", "CloudsCard", "PartlyCloudyCard", "SnowCard", "SleetCard", "ThunderCard", "RainCard", "RainbowCard", "SunnyCard", "CloudsCard", "PartlyCloudyCard", "SnowCard", "SleetCard", "ThunderCard", "RainCard"]
    @State private var flips = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]
    @State private var matches = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]
    @State private var flipCount = 0
    @State private var flip1 = ""
    @State private var flipNum = -1
    @State private var okay = false
    var body: some View {
        VStack {
            Text("Match the cards!")
                .font(.system(size: 43))
                .bold()
                .padding()
            HStack {
                Button {
                    let num = 0
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 0
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 1
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 1
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 2
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 2
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 3
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 3
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            .padding(.horizontal) // HStack
            HStack {
                Button {
                    let num = 4
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 4
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 5
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 5
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 6
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 6
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 7
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 7
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            .padding(.horizontal) // HStack
            HStack {
                Button {
                    let num = 8
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 8
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 9
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 9
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 10
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 10
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 11
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 11
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            .padding(.horizontal) // HStack
            HStack {
                Button {
                    let num = 12
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 12
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 13
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 13
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 14
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 14
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    let num = 15
                    if (matches[num]) {}
                    else {
                        if (flips[num]) {
                            flips[num] = false
                        } else {
                            flips[num] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[num]
                            flipNum = num
                        } else {
                            wait(ind: num)
                        }
                    }
                } label: {
                    let num = 15
                    if (matches[num]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[num]) {
                        Image(icons[num])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            .padding(.horizontal) // HStack
        } // VStack
        .onAppear {
            icons.shuffle()
            icons.shuffle()
        }
    } // body
    
    func wait(ind: Int) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                if (icons[ind] == flip1) {
                    matches[ind] = true
                    matches[flipNum] = true
                } else {
                    flips[ind] = false
                    flips[flipNum] = false
                }
                flip1 = ""
                flipCount = 0
                flipNum = -1
            }
        }
    }
} // end of view

#Preview {
    GameView()
}
