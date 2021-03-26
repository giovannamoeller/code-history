//
//  WelcomeView.swift
//  code-history
//
//  Created by Giovanna Moeller on 25/03/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                (GameColor.main).ignoresSafeArea()
               VStack {
                Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                       Text("Select the correct answers to the following questions.")
                         .font(.largeTitle)
                         .bold()
                         .multilineTextAlignment(.leading)
                         .padding()
                    }
                Spacer()
                NavigationLink(
                       destination: GameView(),
                       label: {
                          BottomTextView(str: "Okay, let's go!")
                })
               }.padding()
               .foregroundColor(.white)
           }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
