import SwiftUI

struct TabBarCustom: View {
    @ObservedObject var viewModel: TabBarViewModel
    var animation: Namespace.ID

    private let screenWidth = UIApplication.shared.screenWidth
    private var tabWidth: CGFloat {
        return screenWidth / 5
    }

    var body: some View {
        let iconH: CGFloat = screenWidth * (200 / 1000)

        ZStack {
            BezierCurvePath(midPoint: viewModel.midPoint)
                .foregroundStyle(.primary01)

            HStack(spacing: 0.0) {
                ForEach(0..<TabModel.allCases.count, id: \.self) { index in
                    let tab = TabModel.allCases[index]
                    let isCurrent = viewModel.tabSelection == index + 1

                    Button {
                        viewModel.selectTab(index: index)
                    } label: {
                        VStack(spacing: 2.0) {
                            Image(systemName: tab.systemImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .aspectRatio(isCurrent ? 0.5 : 0.7, contentMode: .fit)
                                .frame(
                                    width: isCurrent ? iconH : 35.0,
                                    height: isCurrent ? iconH : 35.0
                                )
                                .foregroundStyle(isCurrent ? .white : .gray)
                                .background {
                                    if isCurrent {
                                        Circle()
                                            .fill(.primary01.gradient)
                                            .frame(width: iconH, height: iconH)
                                            .matchedGeometryEffect(id: "CircleAnimation", in: animation)
                                    }
                                }
                                .offset(y: isCurrent ? -iconH / 2 : 0)

                            if !isCurrent {
                                Text(tab.rawValue)
                                    .font(.caption)
                                    .fontDesign(.rounded)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(isCurrent ? .white : .gray)
                        .offset(y: !isCurrent ? -5 : 0)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .frame(height: iconH)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                viewModel.selectTab(index: viewModel.tabSelection - 1)
            }
        }
    }
}

#Preview {
    Root()
}
