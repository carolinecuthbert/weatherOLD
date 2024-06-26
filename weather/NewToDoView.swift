//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 6/26/24.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Bindable var toDoItem: TripItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    var body: some View {
        VStack {
            Text("Task title: ")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Button {
                addTrip()
                self.showNewTask = false
            } label: {
                    Text("Save")
            }
            .font(.title3)
            .buttonStyle(.borderedProminent)
            .tint(.cyan)
        }//end of VStack
        .padding()
    }//end of body
    
    func addTrip() {
        //let trip = TripItem(title: TripItem.title, location: TripItem.location, date: TripItem.date, occasion: TripItem.occasion)
        //modelContext.insert(trip)
    }
}//end of view

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: TripItem.self, configurations: config)

    let trip = TripItem(title: "Example Trip", location: "Example Location", date: "Example date", occasion: "Example date")
    return CreateView(tripItem: trip, showNewTask: .constant(true))
        .modelContainer(container)
}
