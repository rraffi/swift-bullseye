//
//  PointsView.swift
//  BullsEye
//
//  Created by Riaz Raffi on 6/2/21.
//

import SwiftUI

struct PointsView: View {
  var body: some View {
    VStack(spacing: 10) {
      InstructionText(text: "The slider's value is")
      BigNumberText(text: "89")
      ScoreText(text: "You scored 200 points\n🎉🎉🎉")
      Button(action: {}) {
        AlertButtonText(text: "Start New Round")
      }
    }
    .padding()
    .frame(maxWidth: 315)
    .background(Color("BackgroundColor"))
    .cornerRadius(21.0)
    .shadow(radius: 10, x: 5.0, y: 5.0)

  }
}

struct PointsView_Previews: PreviewProvider {
  static var previews: some View {
    PointsView()
    PointsView()
      .preferredColorScheme(.dark)
    PointsView()
      .previewLayout(.fixed(width: 568.0, height: 320.0))
    PointsView()
      .previewLayout(.fixed(width: 568.0, height: 320.0))
      .preferredColorScheme(.dark)
  }
}
