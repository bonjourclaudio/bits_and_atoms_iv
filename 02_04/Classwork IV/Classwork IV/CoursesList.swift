//
//  CourseList.swift
//  Classwork IV
//
//  Created by Claudio Weckherlin on 02.04.2026.
//

import SwiftUI

struct CoursesList: View {
    @Environment(\.dynamicTypeSize) var dynamicTypeSize: DynamicTypeSize
    
    var body: some View {
                NavigationStack {
                    List(courses) { course in
                        NavigationLink {
                            CourseDetailView(course: course)
                        } label: {
                            if dynamicTypeSize.isAccessibilitySize {
                                VStack(alignment: .leading) {
                                    Text(course.name)
                                        .fontWeight(.bold)
                                    Text(course.instructor)
                                    
                                    Text(String(course.credits) + " ETCS")
                                    Text(course.semester + " Semester")
                                }
                                
                            } else {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(course.name)
                                            .fontWeight(.bold)
                                        Text(course.instructor)
                                    }
                                    Spacer()
                                    VStack(alignment: .trailing) {
                                        Text(String(course.credits) + " ETCS")
                                        Text(course.semester + " Semester")
                                    }
                                }
                            }
                            
                        }
                    }
                    .navigationTitle("Courses")
                    .toolbarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CoursesList()
}
