//
//  ContentView.swift
//  30DaysOfSwiftUI
//
//  Created by kapilrathore-mbp on 04/06/20.
//  Copyright © 2020 Kapil Rathore. All rights reserved.
//

import SwiftUI

struct Todo: Identifiable, Equatable {
    let id = UUID()
    let task: String
}

struct ContentView: View {
    
    @State var todos: [Todo] = [
        Todo(task: "Make Video"),
        Todo(task: "Read Documentation"),
        Todo(task: "Learn SwiftUI")
    ]
    @State var doneTodos: [Todo] = []
    @State var newTodo: String = ""
    @State var isAlertPresented = false
    
    var body: some View {
        Form {
            Section {
                ForEach(self.todos) { todo in
                    Text(todo.task)
                        .contextMenu {
                            Button("Increase Priority", action: {
                                guard let index = self.todos.firstIndex(of: todo) else { return }
                                guard index > 0 else { return }
                                self.todos.remove(at: index)
                                self.todos.insert(todo, at: index - 1)
                            })
                            Button("Decrease Priority", action: {
                                guard let index = self.todos.firstIndex(of: todo) else { return }
                                guard index < self.todos.count - 1  else { return }
                                self.todos.remove(at: index)
                                self.todos.insert(todo, at: index + 1)
                            })
                            Button("Mark Done", action: {
                                guard let index = self.todos.firstIndex(of: todo) else { return }
                                self.todos.remove(at: index)
                                self.doneTodos.append(todo)
                            })
                        }
                }
            }
            Section {
                TextField("New Todo", text: self.$newTodo)
                    .font(.headline)
                    .alignmentGuide(HorizontalAlignment.trailing, computeValue: { _ in return 0 })
                Button("Add", action: {
                    if !self.newTodo.isEmpty {
                        self.todos.append(Todo(task: self.newTodo))
                        self.newTodo.removeAll()
                    } else {
                        self.isAlertPresented = true
                    }
                })
                    .font(Font.title.lowercaseSmallCaps())
                    .frame(width: UIScreen.main.bounds.width, alignment: .center)
                    .alert(isPresented: self.$isAlertPresented) {
                        Alert(
                            title: Text("Lazy Alert"),
                            message: Text("Please fill todo before adding...")
                        )
                    }
            }
            Section {
                ForEach(self.doneTodos) { todo in
                    Text(todo.task).strikethrough()
                }
                .onDelete { indexSet in
                    for index in indexSet {
                        self.doneTodos.remove(at: index)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
