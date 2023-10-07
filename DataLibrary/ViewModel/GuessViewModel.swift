//
//  GuessViewModel.swift
//  DataLibrary
//
//  Created by Даниил Крымлов on 28.09.2023.
//

import Foundation

class GuessViewModel : ObservableObject {
    
    @Published private var heroesArray : [Hero] = mockHeroes
    
    var heroes : [Hero] {
        return heroesArray.sorted{
            $0.points > $1.points
        }
    }
    
    func pushAnswer(answer : Int, index : Int){
        
        var i = 0
        while i < heroesArray.count {
            heroesArray[i].points += heroesArray[i].questions[index].answers[answer]
            i += 1
        }
        
    }
    
    func removeAt(index : Int){
        heroesArray.remove(at: index)
    }
    
    func addHero(hero : Hero){
        heroesArray.append(hero)
    }
    
    func clean(){
        
        for index in 0..<heroesArray.count{
            heroesArray[index].points = 0
        }
    }
    
}
