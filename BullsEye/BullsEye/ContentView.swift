//
//  ContentView.swift
//  BullsEye
//
//  Created by Riaz Raffi on 1/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLS EYE AS CLOSE AS YOU CAN")
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(50), in: 1.0 ... 100.0)
                Text("100")
            }
            Button(action: {}) {
                Text("Hit Me")
            }
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
