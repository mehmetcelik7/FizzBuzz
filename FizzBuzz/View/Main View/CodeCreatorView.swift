//
//  CodeCreatorView.swift
//  FizzBuzz
//
//  Created by mehmet Çelik on 3.03.2025.
//

import SwiftUI
import UniformTypeIdentifiers

struct CodeCreatorView: View {
    @StateObject var fizzBuzzAlgViewModel: FizzBuzzAlgViewModel = FizzBuzzAlgViewModel()
    var body: some View {
        NavigationStack {
            List(fizzBuzzAlgViewModel.fizzBuzzModels) { item in
                NavigationLink(item.name) {
                    ZStack{
                        Color
                            .black
                            
                            .ignoresSafeArea()
                        
                        ScrollView {
                            VStack {
                                Text(item.actualFizzBuzzCode)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .minimumScaleFactor(0.1)
                                    .contextMenu{
                                        Button(action: {
                                            UIPasteboard
                                                .general
                                                .string =  item
                                                .actualFizzBuzzCode
                                            
                                        }) {
                                            Text("Copy to clipboard")
                                            Image(systemName: "doc.on.doc")
                                            
                                            
                                        }
                                    }
                                
                                Spacer(minLength: 100)
                                Text("if you wan a copy the code tap the code")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }.navigationTitle("Fizz Buzz")
        }
    }
}

#Preview {
    CodeCreatorView()
}
