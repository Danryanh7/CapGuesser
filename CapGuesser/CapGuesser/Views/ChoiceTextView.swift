//
//  ChoiceTextView.swift
//  CapGuesser
//
//  Created by Daniel Ryan-Huynh on 2022-03-23.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        Text(choiceText)
            .font(.headline)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
