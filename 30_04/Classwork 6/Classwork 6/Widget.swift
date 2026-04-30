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

let staticWidgetEvent: WidgetEvent = WidgetEvent(
    title: "Semester End Party",
    subtitle: "Output 22",
    widgetLabel: "Mehrspur",
    backgroundFileTitle: "mehrspur-poster",
    date: "Saturday 18 June",
    time: "22:00",
    price: 7.0,
    color: .blue
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
                    .frame(maxWidth: .infinity, minHeight: 132, maxHeight: 132, alignment: .leading)
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
                    .frame(width: 350, height: 164)
                    .clipped()
                )
                .cornerRadius(30)
                
                
                // 2ND ROW - MEHRSPUR
                Text("Mehrspur")
                  .font(
                    Font.custom("SF Pro Display", size: 14)
                      .weight(.semibold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .frame(maxWidth: .infinity, alignment: .top)
                
            }
            .padding(0)
            .frame(width: 350, height: 248, alignment: .top)
        }
        .padding()
    }
}

#Preview {
    WidgetView(widgetEvent: staticWidgetEvent)
}
