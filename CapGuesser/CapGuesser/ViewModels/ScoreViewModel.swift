//
//  ScoreViewModel.swift
//  CapGuesser
//
//  Created by Daniel Ryan-Huynh on 2022-03-23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
