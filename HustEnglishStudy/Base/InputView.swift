//
//  InputView.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/8/25.
//

import SwiftUI

struct InputView: View {
    
    @Binding var text: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            if isSecureField {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
            }
        }
        .padding(.vertical)
        .padding(.horizontal)
        .overlay(
            RoundedRectangle(cornerRadius: 16) // bo góc
                .stroke(Color.redPrimary, lineWidth: 2)
        )
    }
}

#Preview {
    InputView(text: .constant(""), placeholder: "Nhập email tài khoản học")
}
