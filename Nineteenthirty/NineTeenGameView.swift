//
//  NineTeenGameView.swift
//  Nineteenthirty
//
//  Created by Nicolae Chivriga on 06/11/2024.
//

import SwiftUI

struct NineTeenGameView: View {
    @State var showImage: Bool = true
    @State var animation: Bool = false
    @EnvironmentObject private var navigationManager: NavigationMng
    var body: some View {
        ZStack {
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
                }
                .padding(.horizontal)
                
                ZStack {
                    WKWebViewRepresentable(url: URL(string: "https://plays.org/game/collect-8k/")!, onLoadCompletion: {
                        showImage = false
                        //            loadingFinished = true
                    })
                    
                    Image("1930")
                        .scaleEffect(animation ? 1 : 0.8)
                        .animation(Animation.bouncy(duration: 0.2).repeatForever(), value: animation )
                        .opacity(showImage ? 1 : 0)
                        .onAppear() {
                            animation = true
                        }
                }
            }
            .padding(.vertical)
        }
    }
}
