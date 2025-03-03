//
//  NiceText.swift
//  FizzBuzz
//
//  Created by mehmet Çelik on 3.03.2025.
//

import SwiftUI

struct NiceText: View {
    let text:String
    
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
            
    }
}

#Preview {
    NiceText(text: "Fizz")
}
