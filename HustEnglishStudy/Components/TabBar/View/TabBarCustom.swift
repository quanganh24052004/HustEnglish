import SwiftUI

struct TabBarCustom: View {
    
    @Binding var tabSelection: Int
    var animation: Namespace.ID
    
    @State private var midPoint: CGFloat = 3.0
    
    private let screenWidth = UIApplication.shared.screenWidth
    private var tabWidth: CGFloat {
        return screenWidth/5
    }
    
    var body: some View {
        let iconH: CGFloat = screenWidth * (200/1000)
        ZStack {
            BezierCurvePath(midPoint: midPoint)
                .foregroundStyle(.black)
            
            HStack(spacing: 0.0) {
                ForEach(0..<TabModel.allCases.count, id: \.self) { index in
                    let tab = TabModel.allCases[index]
                    let isCurrent = tabSelection == index + 1
                    
                    Button {
                        withAnimation(.spring(response: 0.6,
                            dampingFraction: 0.7,
                            blendDuration: 0.7)) {
                            tabSelection = index + 1
                            midPoint = tabWidth * (-CGFloat(tabSelection-3))
                            }
                    } label: {
                        VStack(spacing: 2.0) {
                            Image(systemName: tab.systemImage)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .aspectRatio(
                                        isCurrent ? 0.5 : 0.7,
                                        contentMode: .fit)
                                    .frame(
                                        width: isCurrent ? iconH : 35.0,
                                        height: isCurrent ? iconH : 35.0
                                    )
                                    .foregroundStyle(isCurrent ? .white : .gray)
                                    .background{
                                        if isCurrent {
                                            Circle()
                                                .fill(.black.gradient)
                                                .frame(width: iconH, height: iconH)
                                                .matchedGeometryEffect(id: "CircleAnimation", in: animation)
                                        }
                                    }
                                    .offset(y: isCurrent ? -iconH / 2 : 0)
//                            }
                                if !isCurrent {
                                    Text(tab.rawValue)
                                        .font(.caption)
                                        .fontDesign(.rounded)
                                }
                        }
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(
                            isCurrent ? .white : .gray
                        )
                        .offset(y: !isCurrent ? -5 : 0)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .frame(height: iconH)
//        .onAppear {
//            //tabWidth = screenWidth/5
//            midPoint = tabWidth * (-CGFloat(tabSelection-3))
//        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.7)) {
                    midPoint = tabWidth * (-CGFloat(tabSelection - 3))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

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
