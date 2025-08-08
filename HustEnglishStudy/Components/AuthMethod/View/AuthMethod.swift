//
//  AuthMethod.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/8/25.
//

import SwiftUI

struct AuthMethod: View {
    var body: some View {
        HStack (spacing: 16) {
            Image(.google)
                .padding(.leading, 16)
            Text("Tiếp tục với Gmail")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 32)
        .padding(.vertical, 8)
        .background(Color(.redPrimary))
        .cornerRadius(16)
    }
}

#Preview {
    AuthMethod()
}
