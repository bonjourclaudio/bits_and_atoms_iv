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
    let preferredSize : WidgetSize // .medium / .large
}

// Init Widget - Placeholder
let staticWidgetEvent: WidgetEvent = WidgetEvent(
    title: "Placeholder",
    subtitle: "Placeholder",
    widgetLabel: "Placeholder",
    backgroundFileTitle: "mehrspur-poster",
    date: "Saturday 18 June",
    time: "22:00",
    price: 7.0,
    color: .blue,
    preferredSize: .medium
)

struct WidgetView: View {
    let widgetEvent: WidgetEvent
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 10) {
                VStack(alignment: .leading, spacing: 10) {
                    VStack(alignment: .leading) {
                      // Space Between
                        Text(widgetEvent.title)
                          .font(
                            Font.custom("SF Pro Display", size: 14)
                                .weight(.bold)
                          )
                          .kerning(0.154)
                          .foregroundColor(.white)
                          .frame(maxWidth: .infinity, alignment: .bottomLeading)
                      Spacer()
                      // Alternating Views and Spacers
                        VStack(alignment: .leading, spacing: 0) {
                            Text(widgetEvent.subtitle)
                              .font(
                                Font.custom("SF Pro Display", size: 28)
                                  .weight(.bold)
                              )
                              .kerning(0.396)
                              .foregroundColor(.white)
                              .frame(maxWidth: .infinity, alignment: .bottomLeading)
                            
                            Text("\(widgetEvent.date) • \(widgetEvent.time) • \(widgetEvent.price, specifier: "%.2f") CHF* ")
                              .font(Font.custom("SF Pro Display", size: 16))
                              .foregroundColor(.white)
                              .frame(maxWidth: .infinity, alignment: .bottomLeading)
                        }
                        .padding(0)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    .padding(0)
                    .frame(maxWidth: .infinity, minHeight: widgetEvent.preferredSize == WidgetSize.medium ? 132 : 386, maxHeight: widgetEvent.preferredSize == WidgetSize.medium ? 132 : 386, alignment: .leading)
                }
                .padding(.horizontal, 18)
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .background(
                  LinearGradient(
                    stops: [
                        Gradient.Stop(color: widgetEvent.color.opacity(0), location: 0.00),
                      Gradient.Stop(color: widgetEvent.color, location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.01, y: 0),
                    endPoint: UnitPoint(x: 0.01, y: 0.97)
                  )
                )
                .background(
                    Image(widgetEvent.backgroundFileTitle)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: widgetEvent.preferredSize == WidgetSize.medium ? 164 : 386)
                    .clipped()
                )
                .cornerRadius(30)
                
                
                // 2ND ROW - MEHRSPUR
                Text(widgetEvent.widgetLabel)
                  .font(
                    Font.custom("SF Pro Display", size: 14)
                      .weight(.semibold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .frame(maxWidth: .infinity, alignment: .top)
                
            }
            .padding(0)
            .frame(
                width: 350,
                height: widgetEvent.preferredSize == WidgetSize.medium ? 234 : nil,
                alignment: .top)
        }
        .padding()
    }
}

#Preview {
    WidgetView(widgetEvent: staticWidgetEvent)
}
