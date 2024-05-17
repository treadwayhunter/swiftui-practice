//
//  ContentView.swift
//  ButtonTest
//
//  Created by Hunter Treadway on 5/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ButtonView(text: "Animals", color: Color.red)
        ButtonView(text: "Transport", color: Color.blue)
    }
}



#Preview {
    ContentView()
}

func greet(sentence text: String) {
    print(text)
}
