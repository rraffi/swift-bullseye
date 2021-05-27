//
//  Shapes.swift
//  BullsEye
//
//  Created by Riaz Raffi on 1/27/21.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
      VStack {
        Circle()
          //.fill(Color.blue)
          //.inset(by: 10.0)
          //.stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 20.0)
          .strokeBorder(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 10.0)
          .frame(width: 200.0, height: 100)
        RoundedRectangle(cornerRadius: 20.0)
          .fill(Color.blue)
          .frame(width: 200.0, height: 100)
        Capsule()
          .fill(Color.blue)
          .frame(width: 200.0, height: 100)
        Ellipse()
          .fill(Color.blue)
          .frame(width: 200.0, height: 100)
      }
      .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
