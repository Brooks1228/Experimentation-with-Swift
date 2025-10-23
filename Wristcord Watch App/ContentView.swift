//
//  ContentView.swift
//  Wristcord Watch App
//
//  Created by Brooks on 10/15/25.
//

import SwiftUI

struct WaterTrackerView: View {
    @State private var cups = 0
    
    var body: some View {
        VStack(spacing: 20){
            Text("water")
                .font(.largeTitle)
                .bold()
            Text("tracker")
                .font(.largeTitle)
                .bold()
            
            Text("cups drunk: \(cups)")
                .font(.title2)
            
            Button("drink Water") {
                cups += 1
            }
            .padding()
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Spacer()
        }
        .padding()
    }
}

struct HelloWorldView: View {
    var body: some View {
        Text("Hello, World!")
    }
}
    
    struct ContentView: View {
        var body: some View {
            TabView {
                WaterTrackerView()
                    .tabItem {
                        Label("Water", systemImage: "drop.fill")
                    }
                HelloWorldView()
                    .tabItem {
                        Label("Hello", systemImage: "hand.wave")
                    }
            }
        }
    }
    
    #Preview {
        ContentView()
    }
