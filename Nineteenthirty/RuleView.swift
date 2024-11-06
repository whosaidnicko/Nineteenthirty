//
//  RuleView.swift
//  Nineteenthirty
//
//  Created by Nicolae Chivriga on 06/11/2024.
//

import SwiftUI

struct RuleView: View {
    @EnvironmentObject private var navigationManager: NavigationMng
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation {
                        navigationManager.viewCh = .menu
                    }
                } label: {
                    Image("bkimg")
                }

                Spacer()
                
                Text("Rules")
                    .font(.custom("PixelifySans-SemiBold", size: 52))
                    .foregroundStyle(.black)
                
                Spacer()
                
                Image("bkimg")
                    .opacity(0)
            }
            
            Text("1930 is a simple 24-stage level escape puzzle game where your task is to ensure the survival of the circles. Take out all the squares to activate the portal. Using only pattern-based movements, get the circles to say.")
                .font(.custom("PixelifySans-SemiBold", size: 25))
                .foregroundStyle(.black)
                .multilineTextAlignment(.center)
                .padding()
                .padding(.top, 40)
            Spacer()
        }
        .padding()
    }
}
