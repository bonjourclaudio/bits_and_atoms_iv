import Foundation

// Task 1b
struct Course: Identifiable {
    
    let id: Int
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
        id: Int,
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
        self.id = id
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
        id: 1,
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
        id: 2,
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
        id: 3,
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
        id: 4,
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
        id: 5,
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
