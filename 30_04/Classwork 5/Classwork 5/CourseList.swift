//
//  CoursesView.swift
//  Classwork 5
//
//  Created by Lukman Aščić on 31.03.2026.
//

import SwiftUI

struct CourseList: View {
    var body: some View {
        NavigationStack {
            List(courses) { course in
                NavigationLink(
                    destination: {
                        CourseDetail(course: course)
                    },
                    label: {
                        CourseRow(course: course)
                    }
                )
            }
            .navigationTitle("Courses")
        }
    }
}

#Preview {
    CourseList()
}

