//
//  KnopkaView.swift
//  Nineteenthirty
//
//  Created by Nicolae Chivriga on 06/11/2024.
//

import SwiftUI


struct KnopkaView: View {
    let text: String
    @State var size: CGFloat?
    var body: some View {
        Rectangle()
            .fill(Color.white)
            .overlay {
                Rectangle()
                    .stroke(Color.init(hex: "#000000")
                        ,lineWidth: 3)
                
                Text(text)
                    .font(.custom("PixelifySans-SemiBold", size: size == nil ? 52 : size!))
                    .foregroundStyle(.black)
            }
            .frame(width: 271, height: 77)
        
//
    }
}
