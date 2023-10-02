//
//  ContentView.swift
//  SCSUScroll
//
//  Created by Andrey Karpenko  on 01.10.2023.
//

import SwiftUI

struct ContentView: View {
    let bottomViewHeight: CGFloat = 50.0

    var body: some View {
        TabView {
            ZStack(alignment: .bottom) {
                ScrollableView(bottomViewHeight: bottomViewHeight)
                Color.red.frame(height: bottomViewHeight).opacity(0.5)
            }
            .tabItem { Label("Single Tab", systemImage: "scroll.fill") }
        }
    }
}

struct ScrollableView: View {
    var bottomViewHeight: CGFloat = 50.0

    var body: some View {
        ScrollView {
            ForEach(0..<100) { i in
                Text("\(i)")
                    .frame(maxWidth: .infinity)
            }
        }.contentMargins(.bottom, bottomViewHeight)
    }
}

#Preview {
    ContentView()
}
