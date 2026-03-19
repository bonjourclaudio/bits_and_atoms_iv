import Foundation

// Task 1b
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

    init(
        name: String,
        description: String,
        credits: Int,
        semester: String,
        category: String,
        lectureType: String,
        recorded: Bool,
        instructor: String,
        maxStudents: Int
    ) {
        self.name = name
        self.description = description
        self.credits = credits
        self.semester = semester
        self.category = category
        self.lectureType = lectureType
        self.recorded = recorded
        self.instructor = instructor
        self.maxStudents = maxStudents
    }
}

// Task 1a
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
    // 1a
    Course(
        name: "Guete Kurs",
        description: "Sachemache",
        credits: 1,
        semester: "Fall",
        category: "Programming",
        lectureType: "Project",
        recorded: true,
        instructor: "Guete Siech",
        maxStudents: 20
    ),
    // 1a
    Course(
        name: "Krasse Kurs",
        description: "Krassisachemache",
        credits: 9999,
        semester: "Spring",
        category: "Programming",
        lectureType: "L+E",
        recorded: true,
        instructor: "Krasse Siech",
        maxStudents: 1
    )
]



// Tasks 1c, 1d
for course in courses {
    print("Course \(course.name) lectured by \(course.instructor) \n requiring \(course.credits * 30) hours of workload\n")
}
