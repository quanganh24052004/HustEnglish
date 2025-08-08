//
//  TextTitle.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/8/25.
//

import SwiftUI

struct TextTitle: View {
    @State var titleView: String = "Review"
    
    var body: some View {
        HStack {
            Text(titleView)
                .font(.system(size: 22, weight: .semibold))
                .foregroundColor(.neutral07)
                .frame(height: 26)
            
            Spacer()
        }

    }
}

#Preview {
    TextTitle()
}
