//
//  Root.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/7/25.
//

import SwiftUI

struct Root: View {
    
    @StateObject private var viewModel = TabBarViewModel()
    @State private var tabSelection = 3
    @Namespace private var animation
    
    var body: some View {
        TabView(selection: $tabSelection) {
            Text("Tab content 1")
                .tag(1)
            Text("Tab content 2")
                .tag(2)
            Text("Tab content 2")
                .tag(3)
            Text("Tab content 4")
                .tag(4)
            Text("Tab content 5")
                .tag(5)
        }
        .overlay(alignment: .bottom) {
            TabBarCustom(viewModel: viewModel, animation: animation)

        }
        .ignoresSafeArea()
    }
}

#Preview {
    Root()
}
