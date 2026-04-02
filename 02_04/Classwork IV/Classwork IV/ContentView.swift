//
//  ContentView.swift
//  Classwork IV
//
//  Created by Lukman Aščić on 25.03.2026.
//

import SwiftUI

struct ContentView: View {
    
    // Task 1a
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 100)
            
            Image(systemName: "graduationcap")
                .imageScale(.large)
                .foregroundStyle(.white)
                .padding()
                .background {
                    Circle()
                        .foregroundStyle(.blue)
                }
            
            Text("Bits & Atoms I")
                .font(.headline)
            
            Text("Introduction to Programming")
                .padding(.bottom , 20)
                .font(.subheadline)
            
            // Task 1c
            
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Text("3 ECTS")
                    Text("Fall Semester")
                }
            }
            .padding()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Instructor")
                    Text("Lecture Type")
                    Text("Category")
                }
                .foregroundStyle(.secondary)
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Paulina Zybinska")
                    Text("L + E")
                    Text("Programming")
                }
            }
            .padding()
            
            // Task 1d
            
            Spacer()
        }
        .padding ()
    }
}

#Preview {
    ContentView()
}
