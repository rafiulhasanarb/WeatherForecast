//
//  ScoreView.swift
//  WeatherForecast
//
//  Created by Rafiul Hasan on 11/11/24.
//

import SwiftUI

struct ScoreView: View {
    
    @State private var score = 0
    
    var body: some View {
        Text("Score: \(score)")
            .font(.largeTitle)
            .foregroundStyle(Color.purple)
            .bold()
    }
}

#Preview {
    ScoreView()
}