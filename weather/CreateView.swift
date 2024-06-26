import SwiftUI

struct CreateView: View {
    @State private var formal = false
    @State private var athletic = false
    @State private var casual = false
    @State private var title = ""
    @State private var location = ""
    @State private var tripLength = ""
    
    var body: some View {
        NavigationStack {
        VStack {
            VStack {
                
                HStack {
                    Text("Trip Title:")
                        .font(.system(size: 30))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                } // HStack
                
                TextField("Type here...", text: $title)
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding(.bottom)
                    .lineLimit(5)
                
                Spacer()
                    .frame(height: 30)
                
                HStack {
                    Text("Location:")
                        .font(.system(size: 30))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                } // HStack
                
                TextField("Type here...", text: $location)
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: 30)
                
                HStack {
                    Text("Dates")
                        .font(.system(size: 30))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                } // HStack
                
                TextField("Type a number here...", text: $tripLength)
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding(.bottom)
            }
            
            .padding()
            
            Spacer()
                .frame(height: 50)
            
            VStack {
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
                
                NavigationLink(destination: Text("Hello")) {
                    Button("Create List") {
                        
                    }
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .foregroundStyle(Color.black)
                .tint(Color("cre"))
                
                }
            }
        }
    }
}

#Preview {
    CreateView()
}
