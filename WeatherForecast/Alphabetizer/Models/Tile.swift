//
//  Tile.swift
//  WeatherForecast
//
//  Created by Rafiul Hasan on 11/11/24.
//

import Foundation

struct Tile: Identifiable {
    let id = UUID()

    var word: String
    var position: CGPoint = .zero
    // When flipped, show a checkmark instead of the word and icon
    var flipped = false

    init(word: String) {
        self.word = word
    }

    var icon: String {
        // FIXME: Lookup an icon matching the word
        "🤷"
    }
}

extension Tile {
    static let placeholderSize = size - 20.0
    static let size = 200.0
    static let halfSize = 100.0
    static let spacing = 50.0
    
    // Drag from the center of the tile instead of the default top left
    var centeredOffset: CGSize {
        CGSize(width: position.x - Tile.halfSize, height: position.y - Tile.halfSize)
    }
}
