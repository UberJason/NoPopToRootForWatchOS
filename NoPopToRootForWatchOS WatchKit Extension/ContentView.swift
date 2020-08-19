//
//  ContentView.swift
//  NoPopToRootForWatchOS WatchKit Extension
//
//  Created by Jason Ji on 8/18/20.
//

import SwiftUI

struct ContentView: View {
    @State var rootIsActive: Bool = false
    
    var body: some View {
//        NavigationView {
            VStack {
                Text("Hello, World!")
                    .padding()
                NavigationLink(destination: DetailView(rootIsActive: $rootIsActive), isActive: $rootIsActive) {
                    Text("Push Me")
                }.navigationTitle("Root")
            }
//        }
    }
}
    
struct DetailView: View {
    @Binding var rootIsActive: Bool
    
    var body: some View {
        VStack {
            Text("2nd Screen (Note - no back button above!)")
            NavigationLink("Push To 3rd Screen", destination: ThirdView(rootIsActive: $rootIsActive))
                .navigationTitle("Detail")
        }
    }
}

struct ThirdView: View {
    @Binding var rootIsActive: Bool
    
    var body: some View {
        VStack {
            Text("3rd Screen (Note - no back button above!)")
            Button("Try Pop to Root") {
                rootIsActive.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
