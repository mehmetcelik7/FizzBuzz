//
//  MainView.swift
//  FizzBuzz
//
//  Created by mehmet Çelik on 2.03.2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            
            FizzBuzzView()
                .tabItem {
                    Label("FizzBuzz", systemImage: "bubbles.and.sparkles")
                }
            CodeCreatorView()
                .tabItem {
                    Label("Code", systemImage: "note.text")
                }
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.bubble.fill")
                }
        }
    }
}

struct BackgroundText: View {
    let text: String
    let color: Color
    
    var body: some View {
        ZStack {
            color
                .opacity(0.3)
                .ignoresSafeArea()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
                
            
        }
    }
}

#Preview {
    MainView()
}
