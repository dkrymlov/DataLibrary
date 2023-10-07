//
//  Hero.swift
//  DataLibrary
//
//  Created by Даниил Крымлов on 28.09.2023.
//

import Foundation

class Hero : Identifiable{
    
    var id = UUID()
    let name : String
    let image : String?
    var questions : [Question] = [
        Question(answers: [0, 0, 0]), Question(answers: [0, 0]), Question(answers: [0, 0, 0, 0]), Question(answers: [0, 0, 0]), Question(answers: [0, 0]), Question(answers: [0, 0]), Question(answers: [0, 0, 0, 0]), Question(answers: [0, 0, 0])
    ]
    var points : Int = 0
    var damageType : DamageType
    var primaryAttribute : PrimaryAttribute
    var commonPositions : CommonPositions
    var spawnUnits : Bool
    var massUltimate : Bool
    var healingSpells : Bool
    var activeSpells : Int
    
    init(id: UUID = UUID(), name: String, image: String?, damageType: DamageType, primaryAttribute: PrimaryAttribute, commonPositions: CommonPositions, spawnUnits: Bool, massUltimate: Bool, healingSpells: Bool, activeSpells: Int) {
        self.id = id
        self.name = name
        self.image = image
        self.damageType = damageType
        self.primaryAttribute = primaryAttribute
        self.commonPositions = commonPositions
        self.spawnUnits = spawnUnits
        self.massUltimate = massUltimate
        self.healingSpells = healingSpells
        self.activeSpells = activeSpells
    }
    
}

final class MeleeHero : Hero{
    

    var attackRange : AttackRange = .Melee
    
    override init(id: UUID = UUID(), name: String, image: String?, damageType: DamageType, primaryAttribute: PrimaryAttribute, commonPositions: CommonPositions, spawnUnits: Bool, massUltimate : Bool, healingSpells : Bool, activeSpells : Int) {
        super.init(name: name, image: image, damageType: damageType, primaryAttribute: primaryAttribute, commonPositions: commonPositions, spawnUnits: spawnUnits, massUltimate: massUltimate, healingSpells: healingSpells, activeSpells: activeSpells)
    
        initAnswers()
    }
    
    func initAnswers(){
        
        //1
        if primaryAttribute == .Strength{
            questions[0].answers[0] = 12
            questions[0].answers[1] = -12
            questions[0].answers[2] = -12
        }else if primaryAttribute == .Agility{
            questions[0].answers[0] = -12
            questions[0].answers[1] = 12
            questions[0].answers[2] = -12
        }else if primaryAttribute == .Intelligence{
            questions[0].answers[0] = -12
            questions[0].answers[1] = -12
            questions[0].answers[2] = 12
        }
        //2
        if attackRange == .Melee {
            questions[1].answers[0] = 12
            questions[1].answers[1] = -12
        }else if attackRange == .Range {
            questions[1].answers[0] = -12
            questions[1].answers[1] = 12
        }
        //3
        if commonPositions.positions.contains(.Carry){
            questions[2].answers[0] = 12
        }
        if commonPositions.positions.contains(.MidLane){
            questions[2].answers[1] = 12
        }
        if commonPositions.positions.contains(.HardLane){
            questions[2].answers[2] = 12
        }
        if commonPositions.positions.contains(.Support){
            questions[2].answers[3] = 12
        }
        //4
        if damageType == .Phisical{
            questions[3].answers[0] = 12
            questions[3].answers[1] = -12
            questions[3].answers[2] = -12
        }else if damageType == .Magical{
            questions[3].answers[0] = -12
            questions[3].answers[1] = 12
            questions[3].answers[2] = -12
        }else if damageType == .Hybrid{
            questions[3].answers[0] = 6
            questions[3].answers[1] = 6
            questions[3].answers[2] = 12
        }
        //5
        if spawnUnits == false {
            questions[4].answers[0] = -12
            questions[4].answers[1] = 12
        }else {
            questions[4].answers[0] = 12
            questions[4].answers[1] = -12
        }
        //6
        if massUltimate == false {
            questions[5].answers[0] = -12
            questions[5].answers[1] = 12
        }else {
            questions[5].answers[0] = 12
            questions[5].answers[1] = -12
        }
        //7
        if activeSpells == 1{
            questions[6].answers[0] = 12
            questions[6].answers[1] = -12
            questions[6].answers[2] = -12
            questions[6].answers[3] = -12
        }else if activeSpells == 2{
            questions[6].answers[0] = -12
            questions[6].answers[1] = 12
            questions[6].answers[2] = -12
            questions[6].answers[3] = -12
        }else if activeSpells == 3{
            questions[6].answers[0] = -12
            questions[6].answers[1] = -12
            questions[6].answers[2] = 12
            questions[6].answers[3] = -12
        }else if activeSpells > 3{
            questions[6].answers[0] = -12
            questions[6].answers[1] = -12
            questions[6].answers[2] = -12
            questions[6].answers[3] = 12
        }
        //8
        if healingSpells == false{
            questions[7].answers[0] = -12
            questions[7].answers[1] = 12
        }else {
            questions[7].answers[0] = 12
            questions[7].answers[1] = -12
        }
    }
    
    
}

final class RangeHero : Hero{
    
    var attackRange : AttackRange = .Range
    
    override init(id: UUID = UUID(), name: String, image: String?, damageType: DamageType, primaryAttribute: PrimaryAttribute, commonPositions: CommonPositions, spawnUnits: Bool, massUltimate : Bool, healingSpells : Bool, activeSpells : Int) {
        super.init(name: name, image: image, damageType: damageType, primaryAttribute: primaryAttribute, commonPositions: commonPositions, spawnUnits: spawnUnits, massUltimate: massUltimate, healingSpells: healingSpells, activeSpells: activeSpells)
    
        initAnswers()
    }
    
    func initAnswers(){
        
        //1
        if primaryAttribute == .Strength{
            questions[0].answers[0] = 12
            questions[0].answers[1] = -12
            questions[0].answers[2] = -12
        }else if primaryAttribute == .Agility{
            questions[0].answers[0] = -12
            questions[0].answers[1] = 12
            questions[0].answers[2] = -12
        }else if primaryAttribute == .Intelligence{
            questions[0].answers[0] = -12
            questions[0].answers[1] = -12
            questions[0].answers[2] = 12
        }
        //2
        if attackRange == .Melee {
            questions[1].answers[0] = 12
            questions[1].answers[1] = -12
        }else if attackRange == .Range {
            questions[1].answers[0] = -12
            questions[1].answers[1] = 12
        }
        //3
        if commonPositions.positions.contains(.Carry){
            questions[2].answers[0] = 12
        }
        if commonPositions.positions.contains(.MidLane){
            questions[2].answers[1] = 12
        }
        if commonPositions.positions.contains(.HardLane){
            questions[2].answers[2] = 12
        }
        if commonPositions.positions.contains(.Support){
            questions[2].answers[3] = 12
        }
        //4
        if damageType == .Phisical{
            questions[3].answers[0] = 12
            questions[3].answers[1] = -12
            questions[3].answers[2] = -12
        }else if damageType == .Magical{
            questions[3].answers[0] = -12
            questions[3].answers[1] = 12
            questions[3].answers[2] = -12
        }else if damageType == .Hybrid{
            questions[3].answers[0] = 6
            questions[3].answers[1] = 6
            questions[3].answers[2] = 12
        }
        //5
        if spawnUnits == false {
            questions[4].answers[0] = -12
            questions[4].answers[1] = 12
        }else {
            questions[4].answers[0] = 12
            questions[4].answers[1] = -12
        }
        //6
        if massUltimate == false {
            questions[5].answers[0] = -12
            questions[5].answers[1] = 12
        }else {
            questions[5].answers[0] = 12
            questions[5].answers[1] = -12
        }
        //7
        if activeSpells == 1{
            questions[6].answers[0] = 12
            questions[6].answers[1] = -12
            questions[6].answers[2] = -12
            questions[6].answers[3] = -12
        }else if activeSpells == 2{
            questions[6].answers[0] = -12
            questions[6].answers[1] = 12
            questions[6].answers[2] = -12
            questions[6].answers[3] = -12
        }else if activeSpells == 3{
            questions[6].answers[0] = -12
            questions[6].answers[1] = -12
            questions[6].answers[2] = 12
            questions[6].answers[3] = -12
        }else if activeSpells > 3{
            questions[6].answers[0] = -12
            questions[6].answers[1] = -12
            questions[6].answers[2] = -12
            questions[6].answers[3] = 12
        }
        //8
        if healingSpells == false{
            questions[7].answers[0] = -12
            questions[7].answers[1] = 12
        }else {
            questions[7].answers[0] = 12
            questions[7].answers[1] = -12
        }
    }
    
    
}

enum DamageType {
    case Phisical
    case Magical
    case Hybrid
}

enum AttackRange {
    case Range
    case Melee
}

enum PrimaryAttribute {
    case Strength
    case Agility
    case Intelligence
}

struct CommonPositions {
    let positions : [Position]
}

enum Position{
    case Carry
    case MidLane
    case HardLane
    case Support
}

struct Question {
    var answers : [Int]
}

var mockHeroes : [Hero] = [
    
    MeleeHero(name: "Alchemist", image: "alchemist", damageType: .Phisical, primaryAttribute: .Strength, commonPositions: CommonPositions(positions: [.Carry, .MidLane, .Support]), spawnUnits: false, massUltimate: false, healingSpells: false, activeSpells: 3),
    
    MeleeHero(name: "Earth Shaker", image: "earthshaker", damageType: .Hybrid, primaryAttribute: .Strength, commonPositions: CommonPositions(positions: [.HardLane,.Support]), spawnUnits: false, massUltimate: true, healingSpells: false, activeSpells: 3),
    RangeHero(name: "Lion", image: "lion", damageType: .Magical, primaryAttribute: .Intelligence, commonPositions: .init(positions: [.Support]), spawnUnits: false, massUltimate: false, healingSpells: false, activeSpells: 4),
    RangeHero(name: "Dazzle", image: "dazzle", damageType: .Hybrid, primaryAttribute: .Intelligence, commonPositions: .init(positions: [.Support]), spawnUnits: false, massUltimate: false, healingSpells: true, activeSpells: 4),
    RangeHero(name: "Morphling", image: "morphling", damageType: .Phisical, primaryAttribute: .Agility, commonPositions: .init(positions: [.Carry]), spawnUnits: false, massUltimate: false, healingSpells: false, activeSpells: 6),
    MeleeHero(name: "Juggernaut", image: "juggernaut", damageType: .Phisical, primaryAttribute: .Agility, commonPositions: .init(positions: [.Carry, .MidLane]), spawnUnits: false, massUltimate: false, healingSpells: true, activeSpells: 3)

]
