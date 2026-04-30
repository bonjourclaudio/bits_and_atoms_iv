//
//  ContentView.swift
//  Classwork 6
//
//  Created by Claudio Weckherlin on 30.04.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        let crazyParty = WidgetEvent(
            title: "CrazyParty",
            subtitle: "craaaazy",
            widgetLabel: "Crazy",
            backgroundFileTitle: "mehrspur-poster",
            date: "2026-05-01",
            time: "18:00",
            price: 19.99,
            color: Color("MehrspurEventColor")
        )
        
        WidgetView(widgetEvent: crazyParty)
        
        
        let cooleParty = WidgetEvent(
            title: "so cool",
            subtitle: "mega cool",
            widgetLabel: "cooool",
            backgroundFileTitle: "mehrspur-poster",
            date: "2030-05-01",
            time: "02:00",
            price: 999.99,
            color: Color(.green)
        )
        
        WidgetView(widgetEvent: cooleParty)
        
    }
}

#Preview {
    ContentView()
}
