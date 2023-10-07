//
//  DataManager.swift
//  DataLibrary
//
//  Created by Даниил Крымлов on 04.10.2023.
//

import SwiftUI

struct DataManager: View {
    
    @State var heroes : [Hero] = mockHeroes
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.red, .white], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                VStack(alignment: .leading){
                    ForEach(0..<heroes.count){index in
                        HStack{
                            Image(heroes[index].image ?? "").resizable().frame(width: 50, height: 50)
                            Text(heroes[index].name)
                            Button(action: {
                                mockHeroes.remove(at: index)
                                //heroes.remove(at: index)
                            }, label: {
                                Image(systemName: "trash.circle").font(.title).foregroundColor(.red)
                            })
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                    }
                }
                .navigationTitle("Manager")
                .navigationBarItems(
                    leading: Button(action: {
                        heroes = mockHeroes
                    }, label: {
                        Image(systemName: "plus")
                    }))
            }
        }
    }
}

struct DataManager_Previews: PreviewProvider {
    static var previews: some View {
        DataManager()
    }
}
