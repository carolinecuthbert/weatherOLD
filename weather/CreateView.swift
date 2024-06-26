import SwiftUI
import SwiftData

struct CreateView: View {
    @State private var formal = false
    @State private var athletic = false
    @State private var casual = false
    /*@State private var title = ""
    @State private var location = ""
    @State private var tripLength = ""
    @State private var occasion = ""*/
    @Bindable var tripItem: TripItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    
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
                
                TextField("Type here...", text: $tripItem.title)
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
                
                TextField("Type here...", text: $tripItem.location)
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
                
                TextField("Type a number here...", text: $tripItem.date)
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
                        Button("Formal") {}
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .foregroundStyle(Color.black)
                        .tint(Color("for"))
                        .border(Color.black, width: 4)
                    } else {
                        Button("Formal") {
                            tripItem.occasion = "formal"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .foregroundStyle(Color.black)
                        .tint(Color("for"))
                    }
                    Spacer()
                        .frame(width: 20.0)
                    if (athletic) {
                        Button("Athletic") {}
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .foregroundStyle(Color.black)
                        .tint(Color("ath"))
                        .border(Color.black, width: 4)
                    } else {
                        Button("Athletic") {
                            tripItem.occasion = "athletic"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .foregroundStyle(Color.black)
                        .tint(Color("ath"))
                    }
                    Spacer()
                        .frame(width: 20.0)
                    if (casual) {
                        Button("Casual") {}
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .foregroundStyle(Color.black)
                        .tint(Color("cas"))
                        .border(Color.black, width: 4)
                    } else {
                        Button("Casual") {
                            tripItem.occasion = "casual"
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
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: TripItem.self, configurations: config)

    let trip = TripItem(title: "", location: "", date: "", occasion: "")
    return CreateView(tripItem: trip, showNewTask: .constant(true))
        .modelContainer(container)
}
