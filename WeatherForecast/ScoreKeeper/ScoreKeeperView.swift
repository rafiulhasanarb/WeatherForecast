//
//  ScoreKeeperView.swift
//  WeatherForecast
//
//  Created by Rafiul Hasan on 11/10/24.
//

import SwiftUI

struct ScoreKeeperView: View {
    
    @State private var scoreboard = Scoreboard()
    private var startingPoints = 0
    
    @State private var players: [Player] = [
            Player(name: "Elisha", score: 0),
            Player(name: "Andre", score: 0),
            Player(name: "Jasmine", score: 0),
        ]    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                            .font(.title)
                            .bold()
                            .padding(.bottom)
            
            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                                .font(.headline)
                
                ForEach($scoreboard.players) { $player in
                    GridRow {
                        TextField("Name", text: $player.name)
                        Text("\(player.score)")
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden()
                    }
                }
            }
            
            Button("Add Player", systemImage: "plus") {
                scoreboard.players.append(Player(name: "", score: 0))
            }
            
            Spacer()
            
            switch scoreboard.state {
            case .setup:
                Button("Start Game", systemImage: "play.fill") {
                    scoreboard.state = .playing
                    scoreboard.resetScores(to: startingPoints)
                }
            case .playing:
                Button("End Game", systemImage: "stop.fill") {
                    scoreboard.state = .gameOver
                }
            case .gameOver:
                Button("Reset Game", systemImage: "arrow.counterclockwise") {
                    scoreboard.state = .setup
                }
            }
        }
        .padding()
    }
}

#Preview {
    ScoreKeeperView()
}
