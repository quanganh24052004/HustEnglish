import Foundation

enum TabModel: String, CaseIterable {
    case dictionary = "Dictionary"
    case vocabulary = "Vocab"
    case review = "Review"
    case forum = "Forum"
    case setting = "Setting"
    
    var systemImage: String {
        switch self {
        case .dictionary:
            return "magnifyingglass"
        case .vocabulary:
            return "book"
        case .review:
            return "chart.bar"
        case .forum:
            return "message"
        case .setting:
            return "gearshape"
        }
    }
}

//        switch self {
//        case .dictionary:
//            return "ic_dictionary"
//        case .vocabulary:
//            return "ic_vocabulary"
//        case .review:
//            return "ic_review"
//        case .forum:
//            return "ic_forum"
//        case .setting:
//            return "ic_setting"
//        }

