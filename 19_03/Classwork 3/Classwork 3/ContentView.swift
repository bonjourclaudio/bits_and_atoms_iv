//
//  ContentView.swift
//  Classwork 3
//
//  Created by Lukman Aščić on 19.03.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            
            HStack {
                Spacer()
                VStack() {
                    HStack {
                        Text("Courses @ ZHdK")
                            .font(.largeTitle)
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                }
                Spacer()
            }
            
            HStack {
                Spacer()
                VStack(alignment: .leading) {
                    ForEach (courses) { course in
                        VStack {
                            HStack {
                                Text(course.name).bold()
                                Spacer()
                                Text(course.semester)
                            }
                            HStack {
                                Text(course.instructor)
                                Spacer()
                                Text("Credits: \(course.credits)")
                            }
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                    }
                }
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
