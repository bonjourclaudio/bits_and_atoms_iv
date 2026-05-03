//
//  CourseRow.swift
//  Classwork 5
//
//  Created by Claudio Weckherlin on 03.05.2026.
//

import SwiftUI

struct CourseRow: View {
    
    let course: Course
    
    @Environment(\.dynamicTypeSize) var contentSize
    
    var body: some View {
            if contentSize.isAccessibilitySize {
                VStack(alignment: .leading) {
                    Text(course.name)
                        .fontWeight(.bold)
                    Text(course.instructor)
                    Text(course.semester)
                    Text("Credits: \(course.credits)")
                }
            } else {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(course.name)
                            .fontWeight(.bold)
                        Text(course.instructor)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(course.semester)
                        Text("Credits: \(course.credits)")
                    }
                }
            }
        }
    }

    #Preview {
        CourseRow(course: courses[1])
    }
