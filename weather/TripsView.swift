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
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    Text("Trips")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                    Spacer()
                    NavigationLink(destination: CreateView()) {
                        Text("+")
                            .font(.system(size: 50))
                    }
                }//end of HStack
                .padding()
                Spacer()
                List {
                    ForEach(toDos) { toDoItem in
                        if toDoItem.isImportant == true {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }
                    }
                    .onDelete(perform: deleteToDo)
                }
                .listStyle(.plain)
            }//end of VStack
            if showNewTask {
                NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false), showNewTask: $showNewTask)
            }
        }
    }//end of body
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }
    }
}//end of view

#Preview {
    TripsView()
}
