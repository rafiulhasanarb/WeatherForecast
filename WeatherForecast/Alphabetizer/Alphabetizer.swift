//
//  Alphabetizer.swift
//  WeatherForecast
//
//  Created by Rafiul Hasan on 11/11/24.
//

import SwiftUI

struct Alphabetizer: View {
    
    var body: some View {
        VStack(spacing: 20) {
            ScoreView()
            MessageView()
            Spacer()
            WordCanvas()
            Spacer()
            SubmitButton()
        }
        .padding(.top, 50)
    }
}

#Preview {
    Alphabetizer()
}
