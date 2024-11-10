//
//  OnboardingFlowView.swift
//  WeatherForecast
//
//  Created by Rafiul Hasan on 11/10/24.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct OnboardingFlowView: View {
    
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    OnboardingFlowView()
}
