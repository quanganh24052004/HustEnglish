//
//  Root.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/7/25.
//

import SwiftUI

struct Root: View {
    
    @StateObject private var viewModel = TabBarViewModel()
    @Namespace private var animation
    
    var body: some View {
        TabView(selection: $viewModel.tabSelection) {
            Dictionary()
                .tag(1)
            Vocab()
                .tag(2)
            Review()
                .tag(3)
            Forum()
                .tag(4)
            Setting()
                .tag(5)
        }
        .overlay(alignment: .bottom) {
            TabBarCustom(viewModel: viewModel, animation: animation)

        }
//        .tabViewStyle(.page(indexDisplayMode: .never))
//        .animation(.easeInOut, value: viewModel.tabSelection)
//        .animation(.easeInOut, value: viewModel.midPoint)
        .ignoresSafeArea()
    }
}

#Preview {
    Root()
}
