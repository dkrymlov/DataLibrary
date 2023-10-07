//
//  HeroesView.swidt.swift
//  DataLibrary
//
//  Created by Даниил Крымлов on 28.09.2023.
//

import SwiftUI

struct HeroView: View {
    
    @ObservedObject var viewModel : GuessViewModel
    
    var body: some View {
        
            VStack{
                Text("Можливо ваш герой це").font(.subheadline)
                HStack{
                    Image(viewModel.heroes.sorted{
                        $0.points > $1.points
                    }.first?.image ?? "").resizable().frame(width: 50, height: 50).clipped()
                    Text(viewModel.heroes.sorted{
                        $0.points > $1.points
                    }.first?.name ?? "").font(.title2).bold()
                    Text(String(viewModel.heroes.sorted{
                        $0.points > $1.points
                    }.first?.points ?? 0))
                }
                
            }.padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            
        }
        
}

struct HeroesView: View {
    
    @ObservedObject var viewModel : GuessViewModel
    
    var body: some View {
        ScrollView{
            
            ForEach(0..<viewModel.heroes.sorted{
                $0.points > $1.points
            }.count) { index in
                HStack(spacing: 20){
                    Image(viewModel.heroes[index].image ?? "").resizable().frame(width: 40, height: 40)
                    VStack{
                        Text(viewModel.heroes[index].name)
                            .font(.headline)
                        Text("\(viewModel.heroes[index].points)").font(.caption)
                    }
                    
                }
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.horizontal)
            }
        }
    }
        
}

struct HeroesView_Previews: PreviewProvider {
    static var previews: some View {
        HeroesView(viewModel: GuessViewModel())
    }
}
