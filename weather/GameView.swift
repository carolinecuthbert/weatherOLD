import SwiftUI

struct GameView: View {
    @State private var icons = ["RainbowCard", "SunnyCard", "CloudsCard", "PartlyCloudyCard", "SnowCard", "SleetCard", "ThunderCard", "RainCard", "RainbowCard", "SunnyCard", "CloudsCard", "PartlyCloudyCard", "SnowCard", "SleetCard", "ThunderCard", "RainCard"]
    @State private var flips = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]
    @State private var matches = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]
    @State private var flipCount = 0
    @State private var flip1 = ""
    @State private var flipNum = -1
    var body: some View {
        VStack {
            Text("Match the cards!")
                .font(.system(size: 43))
                .bold()
                .padding()
            HStack {
                Button {
                    if (matches[0]) {}
                    else {
                        if (flips[0]) {
                            flips[0] = false
                        } else {
                            flips[0] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[0]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[0] == flip1) {
                                    matches[0] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[0] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[0]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[0]) {
                        Image(icons[0])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[1]) {}
                    else {
                        if (flips[1]) {
                            flips[1] = false
                        } else {
                            flips[1] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[1]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[1] == flip1) {
                                    matches[1] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[1] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[1]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[1]) {
                        Image(icons[1])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[2]) {}
                    else {
                        if (flips[2]) {
                            flips[2] = false
                        } else {
                            flips[2] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[2]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[2] == flip1) {
                                    matches[2] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[2] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[2]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[2]) {
                        Image(icons[2])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[3]) {}
                    else {
                        if (flips[3]) {
                            flips[3] = false
                        } else {
                            flips[3] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[3]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[3] == flip1) {
                                    matches[3] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[3] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[3]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[3]) {
                        Image(icons[3])
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
                    if (matches[4]) {}
                    else {
                        if (flips[4]) {
                            flips[4] = false
                        } else {
                            flips[4] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[4]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[4] == flip1) {
                                    matches[4] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[4] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[4]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[4]) {
                        Image(icons[4])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[5]) {}
                    else {
                        if (flips[5]) {
                            flips[5] = false
                        } else {
                            flips[5] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[5]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[5] == flip1) {
                                    matches[5] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[5] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[5]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[5]) {
                        Image(icons[5])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[6]) {}
                    else {
                        if (flips[6]) {
                            flips[6] = false
                        } else {
                            flips[6] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[6]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[6] == flip1) {
                                    matches[6] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[6] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[6]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[6]) {
                        Image(icons[6])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[7]) {}
                    else {
                        if (flips[7]) {
                            flips[7] = false
                        } else {
                            flips[7] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[7]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[7] == flip1) {
                                    matches[7] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[7] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[7]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[7]) {
                        Image(icons[7])
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
                    if (matches[8]) {}
                    else {
                        if (flips[8]) {
                            flips[8] = false
                        } else {
                            flips[8] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[8]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[8] == flip1) {
                                    matches[8] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[8] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[8]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[8]) {
                        Image(icons[8])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[9]) {}
                    else {
                        if (flips[9]) {
                            flips[9] = false
                        } else {
                            flips[9] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[9]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[9] == flip1) {
                                    matches[9] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[9] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[9]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[9]) {
                        Image(icons[9])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[10]) {}
                    else {
                        if (flips[10]) {
                            flips[10] = false
                        } else {
                            flips[10] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[10]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[10] == flip1) {
                                    matches[10] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[10] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[10]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[10]) {
                        Image(icons[10])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[11]) {}
                    else {
                        if (flips[11]) {
                            flips[11] = false
                        } else {
                            flips[11] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[11]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[11] == flip1) {
                                    matches[11] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[11] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[11]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[11]) {
                        Image(icons[11])
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
                    if (matches[12]) {}
                    else {
                        if (flips[12]) {
                            flips[12] = false
                        } else {
                            flips[12] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[12]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[12] == flip1) {
                                    matches[12] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[12] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[12]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[12]) {
                        Image(icons[12])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[13]) {}
                    else {
                        if (flips[13]) {
                            flips[13] = false
                        } else {
                            flips[13] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[13]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[13] == flip1) {
                                    matches[13] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[13] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[13]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[13]) {
                        Image(icons[13])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[14]) {}
                    else {
                        if (flips[14]) {
                            flips[14] = false
                        } else {
                            flips[14] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[14]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[14] == flip1) {
                                    matches[14] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[14] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[14]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[14]) {
                        Image(icons[14])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("PlayingCard_Back_Red")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                Button {
                    if (matches[15]) {}
                    else {
                        if (flips[15]) {
                            flips[15] = false
                        } else {
                            flips[15] = true
                        }
                        flipCount+=1
                        if (flipCount==1) {
                            flip1 = icons[15]
                            flipNum = -1
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                if (icons[15] == flip1) {
                                    matches[15] = true
                                    matches[flipNum] = true
                                } else {
                                    flips[15] = false
                                    flips[flipNum] = false
                                }
                                flip1 = ""
                                flipCount = 0
                            }
                        }
                    }
                } label: {
                    if (matches[15]) {
                        Image("cardGone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if (flips[15]) {
                        Image(icons[15])
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
} // end of view

#Preview {
    GameView()
}
