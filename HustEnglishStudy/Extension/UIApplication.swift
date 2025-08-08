//
//  UIApplication.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/7/25.
//

import Foundation
import UIKit

extension UIApplication {
    
    var keyWindow: UIWindow {
        UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first(where: { $0.isKeyWindow})
    ??
    UIWindow()
    }
    
    var screenWidth: CGFloat {
        UIApplication.shared.keyWindow.bounds.size.width
    }
    
    var screenHeight: CGFloat {
        UIApplication.shared.keyWindow.bounds.height
    }
}
