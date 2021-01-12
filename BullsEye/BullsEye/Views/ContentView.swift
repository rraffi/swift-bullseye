//
//  ContentView.swift
//  BullsEye
//
//  Created by Riaz Raffi on 1/7/21.
//

import SwiftUI

struct ContentView: View {

    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()

    var body: some View {
        ZStack {
            // rgb(243, 248, 253)
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("🎯🎯🎯\nPut the Bulls eye as close as you can".uppercased())
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(3.0)
                    .font(.footnote)

                Text(String(game.target))
                    .kerning(-1.0)
                    .fontWeight(.black)
                    .lineSpacing(-1.0)
                    .font(.largeTitle)

                HStack {
                    Text("1")
                        .bold()
                        .font(.headline)

                    Slider(value: $sliderValue, in: 1.0 ... 100.0)

                    Text("100")
                        .bold()
                        .font(.headline)
                }
                .padding()

                Button(action: {
                    print("Target is: \(game.target) | Clicked: Hit Me")
                    alertIsVisible = true
                }) {
                    Text("Hit me".uppercased())
                        .bold()
                        .font(.title3)
                }
                    .padding(20.0)
                    .background(
                        ZStack {
                            Color("ButtonColor")
                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                        }
                    )
                    .foregroundColor(Color.white)
                    .cornerRadius(21.0)
                    .alert(isPresented: $alertIsVisible, content: {
                        let roundValue: Int = Int(sliderValue.rounded())
                        let scoreValue: Int = game.score(sliderValue: roundValue)
                        return  Alert(
                            title: Text("Hello there!"),
                            message: Text("Value hit is \(roundValue).\n" +
                                            "You have scored \(scoreValue) points in this round."),
                            dismissButton:
                                .default(Text("Awesome!"), action: { print("Value selected: \(roundValue) | Score is: \(scoreValue) | Clicked: Dismissed") })
                        )
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
