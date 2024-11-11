//
//  SubmitButton.swift
//  WeatherForecast
//
//  Created by Rafiul Hasan on 11/11/24.
//

import SwiftUI

struct SubmitButton: View {
    
    var body: some View {
        Button {
            // TODO: Submit
        } label: {
            Image(systemName: "play.circle")
                .font(.system(size: 60))
                .foregroundStyle(Color.white)
                .padding(.horizontal, 80)
                .padding(.vertical, 20)
                .background(RoundedRectangle(cornerRadius: 30)
                    .fill(Color.purple)
                )
        }
    }
}

#Preview {
    SubmitButton()
}
