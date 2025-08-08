//
//  BezierCurvePath.swift
//  HustEnglishStudy
//
//  Created by iKame Elite Fresher 2025 on 8/7/25.
//
import SwiftUI

struct BezierCurvePath: Shape {
    
    var midPoint: CGFloat
    
    var animatableData: CGFloat {
        get { return midPoint }
        set { midPoint = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let maxW: CGFloat = 1000
        let maxH: CGFloat = 200.0
        
        let itemW = rect.width
        let itemH = itemW*(maxH/maxW)
        
        path.move(
            to: CGPoint(x: itemW*(688.57/maxW)-midPoint , y: 0)
        )
        path.addCurve(
            to: CGPoint(x: itemW*(602.09/maxW)-midPoint , y: itemH*(53.06/maxH)),
            control1: CGPoint(x: itemW*(652.05/maxW)-midPoint , y: 0),
            control2: CGPoint(x: itemW*(618.97/maxW)-midPoint , y: itemH*(20.68/maxH))
        )
        path.addCurve(
            to: CGPoint(x: itemW*(580.5/maxW)-midPoint , y: itemH*(82.13/maxH)),
            control1: CGPoint(x: itemW*(596.56/maxW)-midPoint , y: itemH*(63.68/maxH)),
            control2: CGPoint(x: itemW*(589.31/maxW)-midPoint , y: itemH*(73.48/maxH))
        )
        path.addCurve(
            to: CGPoint(x: itemW*(501.13/maxW)-midPoint , y: itemH*(114.99/maxH)),
            control1: CGPoint(x: itemW*(559.33/maxW)-midPoint , y: itemH*(102.88/maxH)),
            control2: CGPoint(x: itemW*(530.77/maxW)-midPoint , y: itemH*(114.71/maxH))
        )
        path.addCurve(
            to: CGPoint(x: itemW*(418.68/maxW)-midPoint , y: itemH*(81.21/maxH)),
            control1: CGPoint(x: itemW*(469.99/maxW)-midPoint , y: itemH*(115.29/maxH)),
            control2: CGPoint(x: itemW*(440.67/maxW)-midPoint , y: itemH*(103.31/maxH))
        )
        path.addCurve(
            to: CGPoint(x: itemW*(397.52/maxW)-midPoint , y: itemH*(52.3/maxH)),
            control1: CGPoint(x: itemW*(410.03/maxW)-midPoint , y: itemH*(72.67/maxH)),
            control2: CGPoint(x: itemW*(402.93/maxW)-midPoint , y: itemH*(62.88/maxH))
        )
        path.addCurve(
            to: CGPoint(x: itemW*(311.44/maxW)-midPoint , y: 0),
            control1: CGPoint(x: itemW*(381.02/maxW)-midPoint , y: itemH*(20.07/maxH)),
            control2: CGPoint(x: itemW*(347.64/maxW)-midPoint , y: 0)
        )
        path.addLine(
            to: CGPoint(x: 0, y: 0)
        )
        path.addLine(
            to: CGPoint(x: 0, y: itemH*(200/maxH))
        )
        path.addLine(
            to: CGPoint(x: itemW*(1000/maxW) , y: itemH*(200/maxH))
        )
        path.addLine(
            to: CGPoint(x: itemW*(1000/maxW) , y: 0)
        )
        path.addLine(
            to: CGPoint(x: itemW*(688.57/maxW) , y: 0)
        )
        path.closeSubpath()
        return path
    }
}
