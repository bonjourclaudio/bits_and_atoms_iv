//
//  CourseDetail.swift
//  Classwork 5
//
//  Created by Lukman Aščić on 31.03.2026.
//
import SwiftUI

struct CourseDetail: View {
    @State var course: Course

    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.dynamicTypeSize) var contentSize

    var isLandscape: Bool {
        return verticalSizeClass == .compact
    }

    var body: some View {
        if isLandscape {
            HStack {
                ScrollView {
                    VStack {
                        Button {
                            withAnimation {
                                course.isBookmarked.toggle()
                            }
                            if course.isBooked {
                                course.isBooked = false
                            }
                        } label: {
                            Image(systemName: course.isBookmarked ? "bookmark.fill" : "bookmark")
                        }

                    
                        if contentSize.isAccessibilitySize {
                            VStack(alignment: .leading) {
                                Text(String(course.credits) + " ECTS")
                                Text(course.semester + " Semester")
                                Text("Instructor").foregroundStyle(.secondary)
                                Text(course.instructor)
                                Text("Lecture Type").foregroundStyle(.secondary)
                                Text(course.lectureType)
                                Text("Category").foregroundStyle(.secondary)
                                Text(course.category)
                            }
                            .padding()
                        } else {
                            HStack {
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text(String(course.credits) + " ECTS")
                                    Text(course.semester + " Semester")
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
                        }

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
                    }
                }

                // Right column: icon, title, instructor
                VStack {
                    Spacer()
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

                    Text(course.instructor)
                        .font(.subheadline)
                    Spacer()
                }
            }
            .navigationTitle(course.name)
            .toolbarTitleDisplayMode(.inline)
            .padding()

        } else {
            VStack {
                if !contentSize.isAccessibilitySize {
                    Spacer().frame(height: 100)
                }

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
                    .padding(.bottom, 20)
                    .font(.subheadline)

                Button {
                    withAnimation {
                        course.isBookmarked.toggle()
                    }
                    if course.isBooked {
                        course.isBooked = false
                    }
                } label: {
                    Image(systemName: course.isBookmarked ? "bookmark.fill" : "bookmark")
                }

            
                if contentSize.isAccessibilitySize {
                    VStack(alignment: .leading) {
                        Text(String(course.credits) + " ECTS")
                        Text(course.semester + " Semester")
                        Text("Instructor").foregroundStyle(.secondary)
                        Text(course.instructor)
                        Text("Lecture Type").foregroundStyle(.secondary)
                        Text(course.lectureType)
                        Text("Category").foregroundStyle(.secondary)
                        Text(course.category)
                    }
                    .padding()
                } else {
                    HStack {
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text(String(course.credits) + " ECTS")
                            Text(course.semester + " Semester")
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
                }

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
            .navigationTitle(course.name)
            .toolbarTitleDisplayMode(.inline)
            .padding()
        }
    }
}

#Preview {
    NavigationStack {
        CourseDetail(course: courses[0])
    }
}
