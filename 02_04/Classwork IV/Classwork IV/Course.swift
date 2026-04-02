//
//  Course.swift
//  Classwork IV
//
//  Created by Lukman Aščić on 26.03.2026.
//


import Foundation

struct Course: Identifiable {
    let id: UUID = UUID()
    
    let name: String
    let description: String
    let credits: Int
    let semester: String
    let category: String
    let lectureType: String
    let recorded: Bool
    let instructor: String
    let maxStudents: Int
    // Task 1b
}

let courses = [
    Course(
        name: "Bits & Atoms I",
        description: "Introduction to Programming",
        credits: 3, semester: "Fall",
        category: "Programming",
        lectureType: "L+E",
        recorded: false,
        instructor: "Paulina Zybinska",
        maxStudents: 20
    ),
    Course(
        name: "Mobile User Interface",
        description: "UI Design",
        credits: 6,
        semester: "Spring",
        category: "UI Design",
        lectureType: "Project",
        recorded: false,
        instructor: "Jürgen Späth",
        maxStudents: 20
    ),
    Course(
        name: "Creative Coding",
        description: "Programming",
        credits: 3,
        semester: "Fall",
        category: "Programming",
        lectureType: "L+E",
        recorded: true,
        instructor: "Luke Franzke",
        maxStudents: 20
    ),
    Course(
        name: "Spatial Interaction",
        description: "Environment",
        credits: 8,
        semester: "Spring",
        category: "Environment",
        lectureType: "L+E",
        recorded: false,
        instructor: "Roman Kirschner",
        maxStudents: 20
    ),
    Course(
        name: "Service Design",
        description: "Services",
        credits: 9,
        semester: "Spring",
        category: "Product",
        lectureType: "L+E",
        recorded: true,
        instructor: "Florian Wille",
        maxStudents: 20
    ),
    Course(
        name: "Reactive Signs",
        description: "Services",
        credits: 6,
        semester: "Spring",
        category: "Environment",
        lectureType: "L+E",
        recorded: true,
        instructor: "Rebecca Morganti-Pfaffhauser",
        maxStudents: 20
    ),
    Course(
        name: "Graphical User Interface",
        description: "Services",
        credits: 6,
        semester: "Spring",
        category: "Environment",
        lectureType: "L+E",
        recorded: true,
        instructor: "Jürgen Späth",
        maxStudents: 20
    ),
    Course(
        name: "Theory: Inter-Action Design",
        description: "Aspects of Interaction Design",
        credits: 6,
        semester: "Fall",
        category: "Environment",
        lectureType: "Seminar",
        recorded: true,
        instructor: "Karmen Franinovic",
        maxStudents: 20
    ),
    Course(
        name: "Rebooting Design Technology",
        description: "Technology Design",
        credits: 2,
        semester: "Fall",
        category: "Postcolonial Computing",
        lectureType: "Seminar",
        recorded: true,
        instructor: "Joëlle Bitton",
        maxStudents: 20
    )
]
