//
//  ContentView.swift
//  code-history
//
//  Created by Giovanna Moeller on 10/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2
    )
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Spacer().frame(height: 50)
                Text("1/10").font(.callout).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/).padding()
                Text(question.questionText).font(Font.largeTitle).bold().multilineTextAlignment(.center)
                
                Spacer()
                
                VStack {
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            
                            print("Tapped on action \(answerIndex)")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
