//
//  GameView.swift
//  code-history
//
//  Created by Giovanna Moeller on 10/03/21.
//

import SwiftUI

struct GameView: View {
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2
    )
    
    var body: some View {
        ZStack {
            (GameColor.main).ignoresSafeArea()
            VStack {
                Spacer().frame(height: 50)
                Text("1/10").font(.callout).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/).padding()
                Text(question.questionText).font(Font.largeTitle).bold().multilineTextAlignment(.center)
                
                Spacer()
                
                VStack {
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print("Tapped on action \(answerIndex)")
                            /*GameColor.main = answerIndex == question.correctAnswerIndex ? .green : .red*/
                            }, label: {
                                ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            })
                        Spacer().frame(height: 30)
                    }
                }.font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                .fixedSize(horizontal: false, vertical: true)
            }.foregroundColor(.white)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
