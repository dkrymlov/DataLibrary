//
//  ContentView.swift
//  DataLibrary
//
//  Created by Даниил Крымлов on 28.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView{
            Guess().tabItem{
                Image(systemName: "doc.plaintext")
                Text("Guess")
            }
        }
        .accentColor(.red)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
