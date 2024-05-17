//
//  ButtonView.swift
//  ButtonTest
//
//  Created by Hunter Treadway on 5/17/24.
//

import SwiftUI

struct ButtonView: View {
    let text: String
    let color: Color
    
    var body: some View {
        Button(action: {
            greet(sentence: text)
        }) {
            ZStack {
                Image(getImage(imageString: text))
                    .resizable()
                Rectangle()
                    .foregroundColor(color.opacity(0.40))
                VStack {
                    HStack {
                        Text(text)
                            .foregroundColor(.black)
                            .font(.title)
                        Spacer()
                    }
                    Spacer()
                }
                .padding()
            }
            .frame(width: 360, height: 200)
            .cornerRadius(10)
        }
    }
}

func getImage(imageString: String) -> String {
    switch imageString {
    case "Animals": return "kitten"
    case "Transport": return "airplane"
    default:
        return "test"
    }
}

#Preview {
    ButtonView(text: "Test", color: Color.yellow)
}
