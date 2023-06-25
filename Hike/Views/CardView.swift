//
//  CardView.swift
//  Hike
//
//  Created by Petar Iliev on 6/25/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    
    // MARK: - FUNCTIONS
    func randomImage() {
        let originalNumber = imageNumber
        while imageNumber == originalNumber {
            imageNumber = Int.random(in: 1...5)
        }
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button {
                            // ACTION: Show a Sheet
                            print("Button pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal, 30)
                
                // MARK: - MAIN
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
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                    .scaledToFit()
                }
                
                // MARK: - FOOTER
                Button {
                    withAnimation(.easeOut) {
                        randomImage()
                    }
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(
                            colors: [.customGreenLight, .customGreenMedium],
                            startPoint: .top,
                            endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
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
