//
//  Player.swift
//  WeatherForecast
//
//  Created by Rafiul Hasan on 11/10/24.
//

import Foundation

enum GameState {
    case setup
    case playing
    case gameOver
}

struct Player: Identifiable {
    let id = UUID()
    var name: String
    var score: Int
}

struct Scoreboard {
    var players: [Player] = [
        Player(name: "Elisha", score: 0),
        Player(name: "Andre", score: 0),
        Player(name: "Jasmine", score: 0),
    ]
    
    var state = GameState.setup
    
    mutating func resetScores(to newValue: Int) {


        }
}
