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
        NavigationView {
        Text("Hello, World!")
            .padding()
            NavigationLink("Push Me", destination: DetailView(rootIsActive: $rootIsActive), isActive: $rootIsActive)
        }
    }
}
    
struct DetailView: View {
    @Binding var rootIsActive: Bool
    
    var body: some View {
        VStack {
            Text("2nd Screen")
            NavigationLink("Push To 3rd Screen", destination: ThirdView(rootIsActive: $rootIsActive))
        }
    }
}

struct ThirdView: View {
    @Binding var rootIsActive: Bool
    
    var body: some View {
        VStack {
            Text("3rd Screen")
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
