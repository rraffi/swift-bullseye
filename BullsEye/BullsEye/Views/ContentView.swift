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
      // Background: rgb(243, 248, 253)
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      VStack {
        InstructionsView(game: $game)
        SliderView(sliderValue: $sliderValue)
        HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
      }
    }
  }
}

struct InstructionsView: View {
  @Binding var game: Game

  var body: some View {
    VStack {
      InstructionText(text: "🎯🎯🎯\nPut the Bulls eye as close as you can")
        .padding(.leading, 30.0)
        .padding(.trailing, 30.0)

      BigNumberText(text: String(game.target))
    }
  }
}

struct SliderView: View {
  @Binding var sliderValue: Double

  var body: some View {
    HStack {
      SliderLabelText(text: "1")
      Slider(value: $sliderValue, in: 1.0 ... 100.0)
      SliderLabelText(text: "100")
    }
    .padding()
  }
}

struct HitMeButtonView: View {
  @Binding var alertIsVisible: Bool
  @Binding var sliderValue: Double
  @Binding var game: Game

  var body: some View {
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
    .overlay(
      RoundedRectangle(cornerRadius: 21.0)
        .strokeBorder(Color.white, lineWidth: 2.0)
    )
    .alert(isPresented: $alertIsVisible, content: {
      let roundValue: Int = Int(sliderValue.rounded())
      let scoreValue: Int = game.score(sliderValue: roundValue)
      return  Alert(
        title: Text("Hello there!"),
        message: Text("Value hit is \(roundValue).\n" +
                        "You have scored \(scoreValue) points in this round."),
        dismissButton:
          .default(Text("Awesome!"),
                   action: {
                    print("Value selected: \(roundValue) | Score is: \(scoreValue) | Clicked: Awesome")

           })
      )
    })
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
