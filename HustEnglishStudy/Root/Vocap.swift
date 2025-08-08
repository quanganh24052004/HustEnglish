//
//  Vocap.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/7/25.
//

import SwiftUI

struct Vocab: View {
    var body: some View {
        ZStack {
            Color.neutral01.ignoresSafeArea()
            VStack {
                TextTitle(titleView: "Vocabulary")
                
                Spacer()
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    Vocab()
}
