//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by John Kevin Losito on 4/18/22.
//

import SwiftUI

struct ChoiceText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 100))
            .padding()
    }
}

extension View {
    func choiceStyle() -> some View {
        self.modifier(ChoiceText())
    }
}

struct Rule: View {
    var shouldWin: Bool
    
    var body: some View {
        if shouldWin {
            Text("Choose to WIN")
        }else {
            Text("Choose to LOSE")
        }
    }
}

struct ContentView: View {
    
    let choices = ["👊","✌️","🖐"]
    let winning = ["🖐","👊","✌️"]
    @State private var opponentChoice = Int.random(in: 0...2)
    @State private var shouldWin = Bool.random()
    @State private var score = 0
    @State private var currentRound = 1
    @State private var showingScore = false
    @State private var endGame = false
    @State private var alertMsg = ""
    
    let totalRounds = 10
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Text("JANKEN")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Text("AI's choice")
                    .font(.title)
                Text(choices[opponentChoice])
                    .choiceStyle()
                Rule(shouldWin: shouldWin)
                    .font(.largeTitle)
                HStack {
                    ForEach(0..<3, id: \.self) { choice in
                        Button{
                            playerChose(choice)
                        } label: {
                            Text(winning[choice])
                        }
                    }
                }
                .choiceStyle()
                HStack {
                    HStack {
                        Text("Round:")
                        Text("\(currentRound)/\(totalRounds)")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    .padding()
                    Spacer()
                    HStack {
                        Text("Score:")
                        Text("\(score)")
                            .font(.title)
                            .fontWeight(.bold)
                    }.padding()
                }
                Spacer()
            }
            .foregroundColor(.white)
            .alert(alertMsg, isPresented: $showingScore) {
                Button("OK") {
                    continueGame()
                }
            }
            .alert(alertMsg, isPresented: $endGame) {
                Button("RESET") {
                    resetGame()
                }
            } message: {
                Text("Your total score is \(score)")
            }
        }
    }
    
    func continueGame() {
        if currentRound == totalRounds {
            endGame.toggle()
            alertMsg = "Game over."
            return
        }
        
        currentRound += 1
    }
    
    func resetGame() {
        currentRound = 1
        score = 0
        shouldWin = Bool.random()
        opponentChoice = Int.random(in: 0...2)
    }
    
    func win() {
        score += 1
        alertMsg = "Hooray!!! +1"
    }
    
    func lose() {
        score -= 1
        alertMsg = "Oh no!!! -1"
    }
    
    func playerChose(_ playerChoice: Int) {
        if opponentChoice == playerChoice {
            if shouldWin {
                win()
            } else {
                lose()
            }
        }else {
            if !shouldWin {
                win()
            } else {
                lose()
            }
        }
        
        shouldWin.toggle()
        opponentChoice = Int.random(in: 0...2)
        
        showingScore.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
