//
//  ContentView.swift
//  Classwork 8
//
//  Created by Claudio Weckherlin on 07.05.2026.
//

import SwiftUI
import RealityKit
import Classwork7

struct ContentView: View {
    var body: some View {
            RealityView { content in
                if let exhibitionScene = try? await Entity(named: "Exhibition_A", in: classwork7Bundle) {
                    content.add(exhibitionScene)
                }
            }
        }
}

#Preview {
    ContentView()
}
