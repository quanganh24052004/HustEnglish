//
//  TabBarViewModel.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/7/25.
//

import Foundation
import SwiftUI

class TabBarViewModel: ObservableObject {
    @Published var tabSelection: Int = 3
    @Published var midPoint: CGFloat = 0.0
    
    var tabWidth: CGFloat = UIScreen.main.bounds.width / 5
    
    func selectTab(index: Int) {
        withAnimation(.spring(response: 0.6, dampingFraction: 0.7)) {
            tabSelection = index + 1
            midPoint = tabWidth * (-CGFloat(tabSelection - 3))
        }
    }
}
