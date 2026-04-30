//
//  Classwork_IVApp.swift
//  Classwork IV
//
//  Created by Lukman Aščić on 25.03.2026.
//

import SwiftUI

@main
struct Classwork_IVApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                Tab("Courses", systemImage: "graduationcap") {
                    CoursesList()
                }
                Tab("S Netz", systemImage: "wifi") {
                    CoursesList()
                }
                Tab("Aute, wo bini", systemImage: "person.fill.turn.left") {
                    CoursesList()
                }
                Tab("Go bisle ga", systemImage: "toilet") {
                    CoursesList()
                }
            }
         
        }
    }
}
