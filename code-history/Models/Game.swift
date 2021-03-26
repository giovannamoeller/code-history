//
//  Game.swift
//  code-history
//
//  Created by Giovanna Moeller on 15/03/21.
//

import Foundation

struct Game {
    private(set) var currentQuestionIndex = 0 // private(set) can be read, but not written
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled()
    private(set) var guesses = [Question: Int]()
    
    var numberOfQuestions: Int {
        questions.count // computed properties
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    var guessCount: (correct: Int, incorrect: Int) {
           var count: (correct: Int, incorrect: Int) = (0, 0)
           for (question, guessedIndex) in guesses {
               if question.correctAnswerIndex == guessedIndex {
                   count.correct += 1
               } else {
                   count.incorrect += 1
               }
           }
           return count
       }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
            guesses[currentQuestion] = index
        }
    
    mutating func updateGameStatus() {
            if currentQuestionIndex < questions.count - 1 {
                currentQuestionIndex += 1
            } else {
                isOver = true
            }
        }
}
