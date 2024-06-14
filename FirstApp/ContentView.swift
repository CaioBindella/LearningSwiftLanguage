//
//  ContentView.swift
//  FirstApp
//
//  Created by Caio Bindella on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    @State var selected = "Baseball"
    @State private var id = 1
    
    var body: some View {
        VStack{
            Text("\(selected)!")
                .font(.title)
            
            VStack{
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 120))
                        )
            }
            .transition(.slide)
            .id(id)
            
            Button("Next") {
                withAnimation {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                    
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.system(size: 70))
        }
        
    }
}

#Preview {
    ContentView()
}
