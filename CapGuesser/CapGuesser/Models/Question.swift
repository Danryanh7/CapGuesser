//
//  Question.swift
//  CapGuesser
//
//  Created by Daniel Ryan-Huynh on 2022-03-23.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Google's original name was...",
                possibleAnswers: ["Noogle", "Backrub", "Bing", "iQuery"],
                correctAnswerIndex: 1),
        Question(questionText: "The shape of a wombat's poop is a...",
                possibleAnswers: ["Cube", "Pyramind", "Oval", "Dodecahedron"],
                correctAnswerIndex: 0),
        Question(questionText: "Cows produce 5% more milk when given...",
                possibleAnswers: ["Whiskey", "A Friend", "Butt Plugs", "Names"],
                correctAnswerIndex: 3),
        Question(questionText: "Bruce Willis sent 12,000 boxes of ___ to U.S soldiers",
                possibleAnswers: ["Condoms", "Pokemon Cards", "Girl Scout Cookies", "Playboy Magazines"],
                correctAnswerIndex: 2),
        Question(questionText: "The electric chair was invented by a professional...",
                possibleAnswers: ["Stripper", "Butcher", "Dentist", "Barber"],
                correctAnswerIndex: 2),
        Question(questionText: "Dasypygal is an adjective meaning 'having ___ buttocks'",
                possibleAnswers: ["Juicy", "Large", "Blue", "Hairy"],
                correctAnswerIndex: 3),
        Question(questionText: "The sound of E.T walking was made by someone squishing...",
                possibleAnswers: ["A Breast Implant", "Jell-O", "A Cow Udder", "A Water Balloon"],
                correctAnswerIndex: 1),
        Question(questionText: "Ben & Jerry started making ice cream after making ___ got too expensive",
                possibleAnswers: ["Bagels", "Vibrators", "Inflatable Pools", "Organic Yoghurt"],
                correctAnswerIndex: 0),
        Question(questionText: "A beavers anal secretions are used as a ___ substitute in some foods",
                possibleAnswers: ["Xanthan Gun", "Corn Starch", "Vanilla", "Mint"],
                correctAnswerIndex: 2),
        Question(questionText: "Michael J. Fox's middle name is...",
                 possibleAnswers: ["Andrew", "Jordan", "Patrick", "Jackson"],
                 correctAnswerIndex: 0)
    ]
}
