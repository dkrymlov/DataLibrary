//
//  Questions.swift
//  DataLibrary
//
//  Created by Даниил Крымлов on 30.09.2023.
//

import SwiftUI

struct Question1: View {
    
    @Binding var questionNumber : Int
    @Binding var answers : [Int]
    let viewModel : GuessViewModel
    let index : Int
    
    var body: some View {
        VStack(spacing: 0){
            
            VStack(spacing: 30){
                Text("Який основний атрибут в вашого героя?")
                    .font(.title)
                    .bold()
                HStack(spacing: 5){
                    Button("Сила"){
                        withAnimation(Animation.spring()){
                            answers.append(1)
                            viewModel.pushAnswer(answer: 0, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("Спритність"){
                        withAnimation(Animation.spring()){
                            answers.append(2)
                            viewModel.pushAnswer(answer: 1, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("Інтелект"){
                        withAnimation(Animation.spring()){
                            answers.append(3)
                            viewModel.pushAnswer(answer: 2, index: index)
                            questionNumber += 1
                        }
                    }
                }.buttonStyle(.bordered)
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: 300)
            .padding()
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding(.vertical, 40)
            .tag(index)
            //HeroView(hero: viewModel.heroes.first ?? Hero(name: "", image: "", answers: []))
            Spacer()
        }.gesture(DragGesture())
    }
}

struct Question2: View {
    
    @Binding var questionNumber : Int
    @Binding var answers : [Int]
    let viewModel : GuessViewModel
    let index : Int
    
    var body: some View {
        VStack(spacing: 0){
            
            VStack(spacing: 30){
                Text("Який тип атаки у вашого героя?")
                    .font(.title)
                    .bold()
                HStack(spacing: 5){
                    Button("Ближній"){
                        withAnimation(Animation.spring()){
                            answers.append(1)
                            viewModel.pushAnswer(answer: 0, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("Дальній"){
                        withAnimation(Animation.spring()){
                            answers.append(2)
                            viewModel.pushAnswer(answer: 1, index: index)
                            questionNumber += 1
                        }
                    }
                }.buttonStyle(.bordered)
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: 300)
            .padding()
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding(.vertical, 40)
            .tag(index)
            HeroView(viewModel: viewModel)
            Spacer()
        }.gesture(DragGesture())
    }
}

struct Question3: View {
    
    @Binding var questionNumber : Int
    @Binding var answers : [Int]
    let viewModel : GuessViewModel
    let index : Int
    
    var body: some View {
        VStack(spacing: 0){
            
            VStack(spacing: 30){
                Text("Ваш герой в основному грає на(позиції): ")
                    .font(.title)
                    .bold()
                HStack(spacing: 5){
                    Button("1"){
                        withAnimation(Animation.spring()){
                            answers.append(1)
                            viewModel.pushAnswer(answer: 0, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("2"){
                        withAnimation(Animation.spring()){
                            answers.append(2)
                            viewModel.pushAnswer(answer: 1, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("3"){
                        withAnimation(Animation.spring()){
                            answers.append(3)
                            viewModel.pushAnswer(answer: 2, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("4,5"){
                        withAnimation(Animation.spring()){
                            answers.append(4)
                            viewModel.pushAnswer(answer: 3, index: index)
                            questionNumber += 1
                        }
                    }
                }.buttonStyle(.bordered)
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: 300)
            .padding()
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding(.vertical, 40)
            .tag(index)
            HeroView(viewModel: viewModel)
            Spacer()
        }.gesture(DragGesture())
    }
}

struct Question4: View {
    
    @Binding var questionNumber : Int
    @Binding var answers : [Int]
    let viewModel : GuessViewModel
    let index : Int
    
    var body: some View {
        VStack(spacing: 0){
            
            VStack(spacing: 30){
                Text("Ваш герой наносить шкоду: ")
                    .font(.title)
                    .bold()
                HStack(spacing: 5){
                    Button("Фіз."){
                        withAnimation(Animation.spring()){
                            answers.append(1)
                            viewModel.pushAnswer(answer: 0, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("Маг."){
                        withAnimation(Animation.spring()){
                            answers.append(2)
                            viewModel.pushAnswer(answer: 1, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("Гібрид"){
                        withAnimation(Animation.spring()){
                            answers.append(3)
                            viewModel.pushAnswer(answer: 2, index: index)
                            questionNumber += 1
                        }
                    }
                
                }.buttonStyle(.bordered)
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: 300)
            .padding()
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding(.vertical, 40)
            .tag(index)
            HeroView(viewModel: viewModel)
            Spacer()
        }.gesture(DragGesture())
    }
}

struct Question5: View {
    
    @Binding var questionNumber : Int
    @Binding var answers : [Int]
    let viewModel : GuessViewModel
    let index : Int
    
    var body: some View {
        VStack(spacing: 0){
            
            VStack(spacing: 30){
                Text("Ваш герой має здатність викликати підконтрольних істот: ")
                    .font(.title)
                    .bold()
                HStack(spacing: 5){
                    Button("Так"){
                        withAnimation(Animation.spring()){
                            answers.append(1)
                            viewModel.pushAnswer(answer: 0, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("Ні"){
                        withAnimation(Animation.spring()){
                            answers.append(2)
                            viewModel.pushAnswer(answer: 1, index: index)
                            questionNumber += 1
                        }
                    }
                
                }.buttonStyle(.bordered)
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: 300)
            .padding()
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding(.vertical, 40)
            .tag(index)
            HeroView(viewModel: viewModel)
            Spacer()
        }.gesture(DragGesture())
    }
}

struct Question6: View {
    
    @Binding var questionNumber : Int
    @Binding var answers : [Int]
    let viewModel : GuessViewModel
    let index : Int
    
    var body: some View {
        VStack(spacing: 0){
           
            VStack(spacing: 30){
                Text("Ваш герой має масову ультимативну здатність: ")
                    .font(.title)
                    .bold()
                HStack(spacing: 5){
                    Button("Так"){
                        withAnimation(Animation.spring()){
                            answers.append(1)
                            viewModel.pushAnswer(answer: 0, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("Ні"){
                        withAnimation(Animation.spring()){
                            answers.append(2)
                            viewModel.pushAnswer(answer: 1, index: index)
                            questionNumber += 1
                        }
                    }
                
                }.buttonStyle(.bordered)
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: 300)
            .padding()
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding(.vertical, 40)
            .tag(index)
            HeroView(viewModel: viewModel)
            Spacer()
        }.gesture(DragGesture())
    }
}

struct Question7: View {
    
    @Binding var questionNumber : Int
    @Binding var answers : [Int]
    let viewModel : GuessViewModel
    let index : Int
    
    var body: some View {
        VStack(spacing: 0){
            
            VStack(spacing: 30){
                Text("Кількість активних здібностей героя: ")
                    .font(.title)
                    .bold()
                HStack(spacing: 5){
                    Button("1"){
                        withAnimation(Animation.spring()){
                            answers.append(1)
                            viewModel.pushAnswer(answer: 0, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("2"){
                        withAnimation(Animation.spring()){
                            answers.append(2)
                            viewModel.pushAnswer(answer: 1, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("3"){
                        withAnimation(Animation.spring()){
                            answers.append(3)
                            viewModel.pushAnswer(answer: 2, index: index)
                            questionNumber += 1
                        }
                    }
                    Button(">3"){
                        withAnimation(Animation.spring()){
                            answers.append(4)
                            viewModel.pushAnswer(answer: 3, index: index)
                            questionNumber += 1
                        }
                    }
                
                }.buttonStyle(.bordered)
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: 300)
            .padding()
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding(.vertical, 40)
            .tag(index)
            HeroView(viewModel: viewModel)
            Spacer()
        }.gesture(DragGesture())
    }
}

struct Question8: View {
    
    @Binding var questionNumber : Int
    @Binding var answers : [Int]
    let viewModel : GuessViewModel
    let index : Int
    
    var body: some View {
        VStack(spacing: 0){
            
            VStack(spacing: 30){
                Text("Герой має здібності що зцілюють союзних істот/героїв: ")
                    .font(.title)
                    .bold()
                HStack(spacing: 5){
                    Button("Так"){
                        withAnimation(Animation.spring()){
                            answers.append(1)
                            viewModel.pushAnswer(answer: 0, index: index)
                            questionNumber += 1
                        }
                    }
                    Button("Ні"){
                        withAnimation(Animation.spring()){
                            answers.append(2)
                            viewModel.pushAnswer(answer: 1, index: index)
                            questionNumber += 1
                        }
                    }
                
                }.buttonStyle(.bordered)
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: 300)
            .padding()
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding(.vertical, 40)
            .tag(index)
            HeroView(viewModel: viewModel)
            Spacer()
        }.gesture(DragGesture())
    }
}
