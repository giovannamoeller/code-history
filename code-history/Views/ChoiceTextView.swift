//
//  ChoiceTextView.swift
//  code-history
//
//  Created by Giovanna Moeller on 13/03/21.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        Text(choiceText)
            .padding(.vertical, 15.0).padding(.horizontal, 150.0).border(accentColor, width: 1)
        
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Helloo")
    }
}
