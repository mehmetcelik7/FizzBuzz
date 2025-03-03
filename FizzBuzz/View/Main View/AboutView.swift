//
//  AboutView.swift
//  FizzBuzz
//
//  Created by mehmet Çelik on 2.03.2025.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            BackgroundImageView()
                .opacity(0.3)
             
            
            Text("""
Fizz buzz is a group word game for children to teach them about division.[1] Players take turns to count incrementally, replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz", and any number divisible by both three and five with the word "fizzbuzz"

Players generally sit in a circle. The player designated to go first says the number "one", and the players then count upwards in turn. However, any number divisible by three is replaced by the word fizz and any number divisible by five is replaced by the word buzz. Numbers divisible by both three and five (i.e. divisible by fifteen) become fizz buzz. A player who hesitates or makes a mistake is eliminated.

For example, a typical round of fizz buzz would start as follows:

1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16, 17, Fizz, 19, Buzz, Fizz, 22, 23, Fizz, Buzz, 26, Fizz, 28, 29, Fizz Buzz, 31, 32, Fizz, 34, Buzz, Fizz, ...
""")
            .font(.title)
            .fontWeight(.semibold)
            
            .multilineTextAlignment(.leading)
            .minimumScaleFactor(0.1)
            .padding()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.8)
            .padding()
        }
    }
}

#Preview {
    AboutView()
}
