//
//  Guess.swift
//  DataLibrary
//
//  Created by Даниил Крымлов on 28.09.2023.
//

import SwiftUI

struct Guess: View {
    
    @State var questionNumber : Int = 0
    @State var answers : [Int] = []
    @ObservedObject var viewModel : GuessViewModel = GuessViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                TabView(selection: $questionNumber){
                    
                    Question1(questionNumber: $questionNumber, answers: $answers, viewModel: viewModel, index: 0)
                        .tag(0)
                    Question2(questionNumber: $questionNumber, answers: $answers, viewModel: viewModel, index: 1)
                        .tag(1)
                    Question3(questionNumber: $questionNumber, answers: $answers, viewModel: viewModel, index: 2)
                        .tag(2)
                    Question4(questionNumber: $questionNumber, answers: $answers, viewModel: viewModel, index: 3)
                        .tag(3)
                    Question5(questionNumber: $questionNumber, answers: $answers, viewModel: viewModel, index: 4)
                        .tag(4)
                    Question6(questionNumber: $questionNumber, answers: $answers, viewModel: viewModel, index: 5)
                        .tag(5)
                    Question7(questionNumber: $questionNumber, answers: $answers, viewModel: viewModel, index: 6)
                        .tag(6)
                    Question8(questionNumber: $questionNumber, answers: $answers, viewModel: viewModel, index: 7)
                        .tag(7)
                    HeroesView(viewModel: viewModel)
                        .tag(8)
                    
                }
                
                .navigationTitle("Guess a Hero!")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    leading: Button(action: {
                        viewModel.addHero(hero: RangeHero(name: "Drow Ranger", image: "", damageType: .Phisical, primaryAttribute: .Agility, commonPositions: .init(positions: [.Carry, .MidLane]), spawnUnits: false, massUltimate: false, healingSpells: false, activeSpells: 3))
                    }, label: {
                        Image(systemName: "plus").foregroundColor(.white)
                    }),
                    trailing: Button(action: {
                        withAnimation(Animation.spring()){
                            questionNumber = 0
                            answers = []
                            viewModel.clean()
                        }
                    }, label: {
                        Image(systemName: "arrow.clockwise")
                            .foregroundColor(.white)
                    })
                )
                .tabViewStyle(.page(indexDisplayMode: .never))
            }
            .background(LinearGradient(colors: [.red, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
            
        }
    }
}


struct Guess_Previews: PreviewProvider {
    static var previews: some View {
        Guess()
    }
}
