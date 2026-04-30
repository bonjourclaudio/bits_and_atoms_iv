//
//  Widget.swift
//  Classwork 6
//
//  Created by Claudio Weckherlin on 30.04.2026.
//


import SwiftUI

enum WidgetSize {
    case large
    case medium
}

// TODO: Implement to use in hardcoded Mehrspur-Widget
struct WidgetEvent : Identifiable {
    let id = UUID ()
    let title : String // Semester End Party
    let subtitle : String // Output 22
    let widgetLabel : String // Mehrspur
    let backgroundFileTitle : String
    let date : String // Saturday 18 June
    let time : String // 22:00
    let price : Float // 7
    let color : Color
    let preferredSize : WidgetSize = . medium
}
