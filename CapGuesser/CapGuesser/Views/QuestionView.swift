//
//  QuestionView.swift
//  CapGuesser
//
//  Created by Daniel Ryan-Huynh on 2022-03-23.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(viewModel.questionProgressText)
                .font(.body)
                .bold()
                .padding()
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
            Text(question.questionText)
                .font(.title)
                .bold()
                .padding()
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 175)
                .background(GameColor.accent)
    }.offset(y:-225)
    VStack (spacing: 25)
    {
        HStack (spacing: 25) {
            ForEach (0..<question.possibleAnswers.count/2) { answerIndex in
                Button (action: {
                    viewModel.makeGuess(atIndex: answerIndex)
                }, label: {
                    ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                })
                    .frame(width: 150, height: 150)
                    .background(viewModel.color(forOptionIndex: answerIndex))
                    .border(GameColor.accent, width: 2)
            }
            .disabled(viewModel.guessWasMade)
        }
        HStack (spacing: 25) {
            ForEach (question.possibleAnswers.count/2..<question.possibleAnswers.count) { answerIndex in
                Button (action: {
                    viewModel.makeGuess(atIndex: answerIndex)
                }) {
                    ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                }
                    .frame(width: 150, height: 150)
                    .background(viewModel.color(forOptionIndex: answerIndex))
                    .border(GameColor.accent, width: 2)
            }
            .disabled(viewModel.guessWasMade)
        }
    }.offset(y: 100)
        VStack {
            Spacer()
            if viewModel.guessWasMade {
                Button(action: {
                    viewModel.displayNextScreen()
                }) {
                    BottomTextView(str: "Next")
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
