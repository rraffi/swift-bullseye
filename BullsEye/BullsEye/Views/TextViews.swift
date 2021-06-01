//
//  TextViews.swift
//  BullsEye
//
//  Created by Riaz Raffi on 1/23/21.
//

import SwiftUI

struct InstructionText: View {
  var text: String

  var body: some View {
    Text(text.uppercased())
      .bold()
      .kerning(2.0)
      .multilineTextAlignment(.center)
      .lineSpacing(3.0)
      .font(.footnote)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigNumberText: View {
  var text: String

  var body: some View {
    Text(text)
      .kerning(-1.0)
      .fontWeight(.black)
      .lineSpacing(-1.0)
      .font(.largeTitle)
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String

  var body: some View {
    Text(text)
      .bold()
      .font(.headline)
      .foregroundColor(Color("TextColor"))
      .frame(width: 40.0)
  }
}

struct LabelText: View {
  var text: String

  var body: some View {
    Text(text.uppercased())
      .font(.caption)
      .bold()
      .foregroundColor(Color("TextColor"))
      .kerning(1.5)
  }
}


struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "🎯🎯🎯\nPut the Bulls eye as close as you can")
      BigNumberText(text: "999")
      SliderLabelText(text: "100")
      LabelText(text: "Round")
    }
  }
}
