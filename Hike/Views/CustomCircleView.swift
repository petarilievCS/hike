//
//  CustomCircleView.swift
//  Hike
//
//  Created by Petar Iliev on 6/25/23.
//

import SwiftUI

struct CustomCircleView: View {
    // MARK: - STATE
    @State private var isAnimatingGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonLight
                        ],
                        startPoint: isAnimatingGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimatingGradient ? .bottomTrailing : .topTrailing))
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimatingGradient.toggle()
                    }
                }
            
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
            .previewLayout(.sizeThatFits)
    }
}
