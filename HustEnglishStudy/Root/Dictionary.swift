//
//  Dictionary.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/7/25.
//

import SwiftUI

struct Dictionary: View {
    var body: some View {
        ZStack {
            Color.neutral01.ignoresSafeArea()
            VStack {
                TextTitle(titleView: "Dictionary")
                
                Spacer()
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    Dictionary()
}
