//
//  ContentView.swift
//  BullsEye
//
//  Created by Riaz Raffi on 1/7/21.
//

import SwiftUI

struct ContentView: View {

    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()

    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLS EYE AS CLOSE AS YOU CAN")
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
                Slider(value: self.$sliderValue, in: 1.0 ... 100.0)
                    .padding(2)
                Text("100")
                    .bold()
                    .font(.headline)
            }
            Button(action: {
                print("Clicked: Hit Me")
                self.alertIsVisible = true
            }) {
                Text("Hit Me")
            }
            .alert(isPresented: self.$alertIsVisible, content: {
                let roundValue: Int = Int(self.sliderValue.rounded())
                let scoreValue: Int = self.game.score(sliderValue: roundValue)
                return  Alert(
                    title: Text("Hello there!"),
                    message: Text("Value hit is \(roundValue).\n" +
                                    "You have scored \(scoreValue) points in this round."),
                    dismissButton:
                        .default(Text("Awesome"), action: { print("Value is \(self.sliderValue) | Score is \(scoreValue) | Clicked: Dismissed") })
                )
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
