//
//  MenuView.swift
//  Nineteenthirty
//
//  Created by Nicolae Chivriga on 06/11/2024.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject private var navigationMng: NavigationMng
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation {
                        navigationMng.viewCh = .settings
                    }
                } label: {
                    Image("setImg")
                }

               
                
                Spacer()
                
                Button {
                    withAnimation {
                        navigationMng.viewCh = .rule
                    }
                } label: {
                    Image("ruleBtn")
                }

              
            }
            Spacer()
            
//            Image("1930")
            
            Spacer()
            
            Button {
                withAnimation {
                    self.navigationMng.viewCh = .game
                }
            } label: {
                KnopkaView(text: "Start")
            }

           
        }
        .padding()
    }
}
