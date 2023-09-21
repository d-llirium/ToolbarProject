//
//  ContentView.swift
//  ToolbarProject
//
//  Created by User on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = false
    var body: some View {
        NavigationView {
            Text("Initial View")
            .toolbar { // a toolbar wraps views just like a VStack or NavigationView.
                // views go here
                ToolbarItem(placement: .navigationBarLeading) {
                    // Buttons go here
                    Button {
                        isPresenting = true
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
            .sheet(isPresented: $isPresenting) {
                // view to be displayed
                NavigationView {
                    Text("Stettings Page")
                        .toolbar {
                            ToolbarItem {
                                Button("Save") {}
                            }
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
