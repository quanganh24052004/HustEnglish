//
//  LoginView.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/8/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Text("Đăng nhập để học ngay nhé!!!")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.neutral06)
                .padding(.horizontal, 32)
                .padding(.vertical, 32)
            
            // UI Login with Gmail
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

            // UI Login with Apple
            HStack (spacing: 16) {
                Text("Tiếp tục với Apple")
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.bottom, 8)
            }
            // UI Login with Microsoft
            Text("Tiếp tục với Microsoft")
                .font(.system(size: 16, weight: .semibold))
                .padding(.bottom, 8)

            Text("HOẶC")
                .font(.system(size: 14, weight: .semibold))
            
            InputView(text: $email, placeholder: "Nhập email tài khoản học")
            
            InputView(text: $password, placeholder: "Nhập mật khẩu tài khoản học", isSecureField: true)
            Spacer()
            
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    LoginView()
}
