//
//  ContentView.swift
//  Classwork 6
//
//  Created by Claudio Weckherlin on 30.04.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 10) {
                VStack(alignment: .leading, spacing: 10) {
                    VStack(alignment: .leading) {
                      // Space Between
                        Text("Output 22")
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
                            Text("Semester End Night")
                              .font(
                                Font.custom("SF Pro Display", size: 28)
                                  .weight(.bold)
                              )
                              .kerning(0.396)
                              .foregroundColor(.white)
                              .frame(maxWidth: .infinity, alignment: .bottomLeading)
                            
                            Text("Saturday 18 June • 22:00 • 7 CHF* ")
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
                      Gradient.Stop(color: Color("MehrspurEventColor").opacity(0), location: 0.00),
                      Gradient.Stop(color: Color("MehrspurEventColor"), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.01, y: 0),
                    endPoint: UnitPoint(x: 0.01, y: 0.97)
                  )
                )
                .background(
                  Image("mehrspur-poster")
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
    ContentView()
}
