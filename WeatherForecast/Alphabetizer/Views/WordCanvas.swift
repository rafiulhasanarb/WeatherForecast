//
//  WordCanvas.swift
//  WeatherForecast
//
//  Created by Rafiul Hasan on 11/11/24.
//

import SwiftUI

struct WordCanvas: View {
    
    @State private var tiles: [Tile] = [
        Tile(word: "First"),
        Tile(word: "Second"),
        Tile(word: "Third")
    ]
    
    var body: some View {
        ZStack {
            HStack(spacing: Tile.spacing) {
                ForEach(tiles) { _ in
                    Rectangle()
                        .fill(Color.purple.opacity(0.2))
                        .offset(y: -(Tile.size + Tile.halfSize))
                        .frame(width: Tile.placeholderSize, height: Tile.placeholderSize)
                }
            }
            ForEach($tiles) { $tile in
                TileView(tile: tile)
                    .offset(tile.centeredOffset)
                    .gesture(DragGesture().onChanged { value in
                        tile.position = value.location
                    })
            }
            .offset(x: Tile.halfSize)
        }
        .onAppear {
            setInitialTilePositions()
        }
    }
}

#Preview {
    WordCanvas()
}

extension WordCanvas {
    private func setInitialTilePositions() {
        // Distribute tiles apart from each other but still centered
        // 0,0 is in the middle of the stack
        tiles.enumerated().forEach { index, tile in
            // [0, 1, 2] -> 1
            // [0, 1, 2, 3] -> 1.5
            // [0, 1, 2, 3, 4] -> 2
            let midpoint = Double(tiles.count - 1) / 2.0
            // [0, 1, 2] -> [-1, 0, 1]
            // [0, 1, 2, 3] -> [-1.5, -0.5, 0.5, 1.5]
            // [0, 1, 2, 3, 4] -> [-2, -1, 0, 1, 2]
            let position = Double(index) - midpoint
            
            tiles[index].position.x = (Tile.size + Tile.spacing) * position
            tiles[index].position.y = Tile.halfSize
        }
    }
}
