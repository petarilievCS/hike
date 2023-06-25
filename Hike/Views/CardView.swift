//
//  CardView.swift
//  Hike
//
//  Created by Petar Iliev on 6/25/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                .customIndigoMedium,
                                .customSalmonLight
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                    .frame(width: 256, height: 256)
                
                Image.image1
                    .resizable()
                .scaledToFit()
            }
        }
        .frame(width: 320, height: 570)
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
