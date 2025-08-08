//
//  Forum.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/7/25.
//

import SwiftUI

struct Forum: View {
    var body: some View {
        ZStack {
            Color.neutral01.ignoresSafeArea()
            VStack {
                TextTitle(titleView: "Forum")
                
                Spacer()
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    Forum()
}
