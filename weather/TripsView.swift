//
//  TripsView.swift
//  ToDoList
//
//  Created by Scholar on 6/26/24.
//

import SwiftUI
import SwiftData

struct TripsView: View {
    @State private var showNewTask = false
    @Query var trips: [TripItem]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    Text("Trips")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                    Spacer()
                    NavigationLink(destination: CreateView(tripItem: TripItem(title: "", location: "", date: "", occasion: ""), showNewTask: $showNewTask)) {
                        Text("+")
                            .font(.system(size: 50))
                    }
                }//end of HStack
                .padding()
                Spacer()
                List {
                    //ForEach(trips) {}
                    //.onDelete(perform: deleteToDo)
                }
                .listStyle(.plain)
            }//end of VStack
            if showNewTask {
                NewToDoView(toDoItem: TripItem(title: "", location: "", date: "", occasion: ""), showNewTask: $showNewTask)
            }
        }
    }//end of body
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let tripItem = trips[offset]
            modelContext.delete(tripItem)
        }
    }
}//end of view

#Preview {
    TripsView()
}
