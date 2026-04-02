//
//  ContentView.swift
//  Classwork IV
//
//  Created by Lukman Aščić on 25.03.2026.
//

import SwiftUI

struct ContentView: View {
    
    // Task 1a
    @State var course = courses[0]
    
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
            
            Text(course.name)
                .font(.headline)
            
            Text(course.description)
                .padding(.bottom , 20)
                .font(.subheadline)
            
            // Task 1c
            
            Button {
                withAnimation {
                    course.isBookmarked.toggle()
                }
            } label: {
                Image(systemName: course.isBookmarked ? "bookmark.fill" : "bookmark")
            }
            
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Text("\(course.credits) ECTS")
                    Text("\(course.semester) Semester")
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
                    Text(course.instructor)
                    Text(course.lectureType)
                    Text(course.category)
                }
            }
            .padding()
            
            // Task 1d
            
            if course.isBookmarked {
                Button {
                    course.isBooked.toggle()
                } label: {
                    if course.isBooked {
                        HStack {
                            Text("Booked!")
                            Image(systemName: "checkmark")
                        }
                        .foregroundStyle(.green)
                    } else {
                        Text("Book")
                            .foregroundStyle(.red)
                    }
                }
                .transition(.scale)
            }
            
            Spacer()
        }
        .padding ()
    }
}

#Preview {
    ContentView()
}
